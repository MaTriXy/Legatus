import Foundation
import Combine
import JASON

public protocol JSONDeserializable {
    init?(json: JSON)
}

open class JSONDeserializer<T>: ResponseDeserializer<T> {

    public enum JSONDeserializerError: Error {
        case jsonDeserializableInitFailed(String)
    }

    typealias Transform = ((Data, [String: Any]?) throws -> T)

    let transform: Transform

    init(transform: @escaping Transform) {
        self.transform = transform
    }

    convenience override init() {
        self.init { jsonObject, _ -> T in
            if let object = jsonObject as? T {
                return object
            }

            throw ResponseError.resourceInvalidError()
        }
    }

    public override func deserialize(_ data: Data, headers: [String: Any]? = nil) -> Future<T, Error> {
        return Future { promise in
            do {
                let object = try self.transform(data, headers)
                promise(.success(object))
            } catch {
                promise(.failure(error))
            }
        }
    }
}

public extension JSONDeserializer where T: JSONDeserializable {

    class func singleObjectDeserializer(keyPath: String? = nil) -> JSONDeserializer<T> {
        return JSONDeserializer { jsonDataObject, _ in
            let json = JSON(jsonDataObject)

            guard let deserializedObject = keyPath == nil ? T(json: json) : T(json: json[keyPath!].json) else {
                throw JSONDeserializerError.jsonDeserializableInitFailed("Failed to create \(T.self) object.")
            }
            return deserializedObject
        }
    }

    class func objectsArrayDeserializer(keyPath: String? = nil) -> JSONDeserializer<[T]> {
        return JSONDeserializer<[T]>(transform: { jsonDataObject, _ in
            let json = JSON(jsonDataObject)
            let jsonArrayValue = keyPath == nil ? json.jsonArrayValue : json[keyPath!].jsonArrayValue

            if jsonArrayValue.isEmpty {
                return []
            }

            let deserializedObjects = jsonArrayValue.compactMap { T(json: $0) }

            if deserializedObjects.isEmpty {
                throw JSONDeserializerError.jsonDeserializableInitFailed("Failed to create array of \(T.self) objects.")
            }

            return deserializedObjects
        })
    }
}
