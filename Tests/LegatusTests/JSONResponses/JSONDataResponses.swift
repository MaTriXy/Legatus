import Foundation

struct JSONDataResponses {
    static let singleRandomUserJsonDataResponse = """
          {
                        "user":
                           {
                              "gender":"male",
                              "name":{
                                 "title":"mr",
                                 "first":"brad",
                                 "last":"gibson"
                              },
                              "location":{
                                 "street":"9278 new road",
                                 "city":"kilcoole",
                                 "state":"waterford",
                                 "postcode":"93027",
                                 "coordinates":{
                                    "latitude":"20.9267",
                                    "longitude":"-7.9310"
                                 },
                                 "timezone":{
                                    "offset":"-3:30",
                                    "description":"Newfoundland"
                                 }
                              },
                              "email":"brad.gibson@example.com",
                              "login":{
                                 "uuid":"155e77ee-ba6d-486f-95ce-0e0c0fb4b919",
                                 "username":"silverswan131",
                                 "password":"firewall",
                                 "salt":"TQA1Gz7x",
                                 "md5":"dc523cb313b63dfe5be2140b0c05b3bc",
                                 "sha1":"7a4aa07d1bedcc6bcf4b7f8856643492c191540d",
                                 "sha256":"74364e96174afa7d17ee52dd2c9c7a4651fe1254f471a78bda0190135dcd3480"
                              },
                              "dob":{
                                 "date":"1993-07-20T09:44:18.674Z",
                                 "age":26
                              },
                              "registered":{
                                 "date":"2002-05-21T10:59:49.966Z",
                                 "age":17
                              },
                              "phone":"011-962-7516",
                              "cell":"081-454-0666",
                              "id":{
                                 "name":"PPS",
                                 "value":"0390511T"
                              },
                              "picture":{
                                 "large":"https://randomuser.me/api/portraits/men/75.jpg",
                                 "medium":"https://randomuser.me/api/portraits/med/men/75.jpg",
                                 "thumbnail":"https://randomuser.me/api/portraits/thumb/men/75.jpg"
                              },
                              "nat":"IE"
                           }

                     }
    """.data(using: .utf8)!

    static let randomUserJsonDataResponse = """
        {
           "results":[
              {
                 "gender":"male",
                 "name":{
                    "title":"mr",
                    "first":"brad",
                    "last":"gibson"
                 },
                 "location":{
                    "street":"9278 new road",
                    "city":"kilcoole",
                    "state":"waterford",
                    "postcode":"93027",
                    "coordinates":{
                       "latitude":"20.9267",
                       "longitude":"-7.9310"
                    },
                    "timezone":{
                       "offset":"-3:30",
                       "description":"Newfoundland"
                    }
                 },
                 "email":"brad.gibson@example.com",
                 "login":{
                    "uuid":"155e77ee-ba6d-486f-95ce-0e0c0fb4b919",
                    "username":"silverswan131",
                    "password":"firewall",
                    "salt":"TQA1Gz7x",
                    "md5":"dc523cb313b63dfe5be2140b0c05b3bc",
                    "sha1":"7a4aa07d1bedcc6bcf4b7f8856643492c191540d",
                    "sha256":"74364e96174afa7d17ee52dd2c9c7a4651fe1254f471a78bda0190135dcd3480"
                 },
                 "dob":{
                    "date":"1993-07-20T09:44:18.674Z",
                    "age":26
                 },
                 "registered":{
                    "date":"2002-05-21T10:59:49.966Z",
                    "age":17
                 },
                 "phone":"011-962-7516",
                 "cell":"081-454-0666",
                 "id":{
                    "name":"PPS",
                    "value":"0390511T"
                 },
                 "picture":{
                    "large":"https://randomuser.me/api/portraits/men/75.jpg",
                    "medium":"https://randomuser.me/api/portraits/med/men/75.jpg",
                    "thumbnail":"https://randomuser.me/api/portraits/thumb/men/75.jpg"
                 },
                 "nat":"IE"
              },
              {
                 "gender":"male",
                 "name":{
                    "title":"Mr",
                    "first":"Theo",
                    "last":"Zhang"
                 },
                 "location":{
                    "street":{
                       "number":2157,
                       "name":"Highgate"
                    },
                    "city":"Timaru",
                    "state":"Otago",
                    "country":"New Zealand",
                    "postcode":80810,
                    "coordinates":{
                       "latitude":"64.7097",
                       "longitude":"-24.7690"
                    },
                    "timezone":{
                       "offset":"+6:00",
                       "description":"Almaty, Dhaka, Colombo"
                    }
                 },
                 "email":"theo.zhang@example.com",
                 "login":{
                    "uuid":"efc36c9c-a244-4bc9-b78b-7bc256c6d777",
                    "username":"lazypanda513",
                    "password":"james1",
                    "salt":"NkqqUXM8",
                    "md5":"b8746f2ac0238b9922192e9526f21143",
                    "sha1":"f1def7a140085ba99ec33a3ad40d5c2b7353d778",
                    "sha256":"be59739c03f8abbae3f2b86862c31d039155d8a08f4a4bb35a3c374c99bb7638"
                 },
                 "dob":{
                    "date":"1982-04-23T09:21:07.371Z",
                    "age":37
                 },
                 "registered":{
                    "date":"2016-04-17T05:01:09.547Z",
                    "age":3
                 },
                 "phone":"(337)-484-4449",
                 "cell":"(738)-888-7346",
                 "id":{
                    "name":"",
                    "value":null
                 },
                 "picture":{
                    "large":"https://randomuser.me/api/portraits/men/17.jpg",
                    "medium":"https://randomuser.me/api/portraits/med/men/17.jpg",
                    "thumbnail":"https://randomuser.me/api/portraits/thumb/men/17.jpg"
                 },
                 "nat":"NZ"
              }
           ],
           "info":{
              "seed":"fea8be3e64777240",
              "results":1,
              "page":1,
              "version":"1.3"
           }
        }
""".data(using: .utf8)!

    static let errorJsonDataResponse =  """
    {
    "timestamp":"2019-09-16T22:14:45.624+0000",
    "status":500,
    "error":"Internal Server Error",
    "message":"Test error message.",
    "path":"/api/book/1"
    }
    """.data(using: .utf8)!

    static let errorKeyPathJsonDataResponse =  """
        {
        "error": {
        "timestamp":"2019-09-16T22:14:45.624+0000",
        "status":500,
        "error":"Internal Server Error",
        "message":"Test error message.",
        "path":"/api/book/1"
        }
        }
        """.data(using: .utf8)!
}
