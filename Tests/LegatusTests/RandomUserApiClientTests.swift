import XCTest
@testable import Legatus

final class RandomUserApiClientTests: XCTestCase {

    func testExample() {
        let randomUserApiClient = APIClient(baseURL: URL(string: "https://randomuser.me/api/")!)
        let randomUserApiRequest = RandomUserApiRequest()
        let randomUserApiExpectation = XCTestExpectation(description: "Execute randomuser api request.")

        randomUserApiClient.executeRequest(request: randomUserApiRequest) { fetchedUsers, error in
            if let fetchedUsers = fetchedUsers {
                XCTAssertFalse(fetchedUsers.isEmpty)
                XCTAssertTrue(fetchedUsers.count == 1)
                XCTAssertNotNil(fetchedUsers.first?.firstName)
                XCTAssertNotNil(fetchedUsers.first?.lastName)
                XCTAssertNotNil(fetchedUsers.first?.email)
            }
            randomUserApiExpectation.fulfill()
        }

        wait(for: [randomUserApiExpectation], timeout: 10.0)
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}


