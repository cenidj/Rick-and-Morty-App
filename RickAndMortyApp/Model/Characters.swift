// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let charactersResponse = try? JSONDecoder().decode(CharactersResponse.self, from: jsonData)

import Foundation

struct CharactersResponse: Codable {
//    let info: Info
    let results: [Character]
}

//struct Info: Codable {
//    let count, pages: Int
//    let next: String
//    let prev: JSONNull?
//}

struct Character: Codable, Identifiable {
    let id: Int
    let name: String
    let status: Status
    let species: Species
    let type: String
    let gender: Gender
    let origin, location: Location
    let image: String
    let episode: [String]
    let url: String
    let created: String
    
    var imgUrl: URL? {
        return URL(string: "https://rickandmortyapi.com/api/character/avatar/\(id).jpeg")
    }
}

enum Gender: String, Codable {
    case female = "Female"
    case male = "Male"
    case unknown = "unknown"
}

struct Location: Codable {
    let name: String
    let url: String
}

enum Species: String, Codable {
    case alien = "Alien"
    case human = "Human"
}

enum Status: String, Codable {
    case alive = "Alive"
    case dead = "Dead"
    case unknown = "unknown"
}

//class JSONNull: Codable, Hashable {
//
//    public static func == (lhs: JSONNull, rhs: JSONNull) -> Bool {
//        return true
//    }
//
//    public var hashValue: Int {
//        return 0
//    }
//
//    public init() {}
//
//    public required init(from decoder: Decoder) throws {
//        let container = try decoder.singleValueContainer()
//        if !container.decodeNil() {
//            throw DecodingError.typeMismatch(JSONNull.self, DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Wrong type for JSONNull"))
//        }
//    }
//
//    public func encode(to encoder: Encoder) throws {
//        var container = encoder.singleValueContainer()
//        try container.encodeNil()
//    }
//}


func example() -> Character{
    return Character(id: 1, name: "Rick Sanchez", status: Status.alive, species: Species.human, type: "", gender: Gender.male, origin: Location(name: "", url: ""), location: Location(name: "", url:""), image: "https://rickandmortyapi.com/api/character/avatar/1.jpeg", episode: ["", ""], url: "https://rickandmortyapi.com/api/character/1", created: "2017-11-04T18:48:46.250Z")
}
