//
//  Character.swift
//  HarryPotterAndSwiftUI
//
//  Created by Pavel Grigorev on 23.05.2023.
//

import Foundation

struct Character: Codable, Identifiable {
    let id, name: String
    let alternateNames: [String]
    let species: String
    let gender: Gender
    let house: House
    let yearOfBirth: Int?
    let wizard: Bool
    let ancestry: String
    let eyeColour: String
    let hairColour: String
    let wand: Wand
    let patronus: String
    let hogwartsStudent, hogwartsStaff: Bool
    let actor: String
    let alive: Bool
    var image: String

    enum CodingKeys: String, CodingKey {
        case id, name
        case alternateNames = "alternate_names"
        case species, gender, house, yearOfBirth, wizard, ancestry, eyeColour, hairColour, wand, patronus, hogwartsStudent, hogwartsStaff, actor
        case alive, image
    }

    init(id: String, name: String, alternateNames: [String], species: String, gender: Gender, house: House, yearOfBirth: Int?, wizard: Bool, ancestry: String, eyeColour: String, hairColour: String, wand: Wand, patronus: String, hogwartsStudent: Bool, hogwartsStaff: Bool, actor: String, alive: Bool, image: String) {
        self.id = id
        self.name = name
        self.alternateNames = alternateNames
        self.species = species
        self.gender = gender
        self.house = house
        self.yearOfBirth = yearOfBirth
        self.wizard = wizard
        self.ancestry = ancestry
        self.eyeColour = eyeColour
        self.hairColour = hairColour
        self.wand = wand
        self.patronus = patronus
        self.hogwartsStudent = hogwartsStudent
        self.hogwartsStaff = hogwartsStaff
        self.actor = actor
        self.alive = alive
        self.image = image
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.name = try container.decode(String.self, forKey: .name)
        self.alternateNames = try container.decode([String].self, forKey: .alternateNames)
        self.species = try container.decode(String.self, forKey: .species)
        self.gender = try container.decode(Gender.self, forKey: .gender)
        self.house = try container.decode(House.self, forKey: .house)
        self.yearOfBirth = try container.decodeIfPresent(Int.self, forKey: .yearOfBirth)
        self.wizard = try container.decode(Bool.self, forKey: .wizard)
        self.ancestry = try container.decode(String.self, forKey: .ancestry)
        self.eyeColour = try container.decode(String.self, forKey: .eyeColour)
        self.hairColour = try container.decode(String.self, forKey: .hairColour)
        self.wand = try container.decode(Wand.self, forKey: .wand)
        self.patronus = try container.decode(String.self, forKey: .patronus)
        self.hogwartsStudent = try container.decode(Bool.self, forKey: .hogwartsStudent)
        self.hogwartsStaff = try container.decode(Bool.self, forKey: .hogwartsStaff)
        self.actor = try container.decode(String.self, forKey: .actor)
        self.alive = try container.decode(Bool.self, forKey: .alive)
        self.image = try container.decode(String.self, forKey: .image)
        switch self.name {
        case "Albus Dumbledore": self.image = "https://pm1.narvii.com/7743/aad5ab12b083be42919c06becc53d9cfb1e24d0dr1-750-563v2_00.jpg"
        case "James Potter": self.image = "https://static.wikia.nocookie.net/harrypotter/images/1/10/James_Potter_I_Deathly_Hallows.jpg"
        case "Lily Potter": self.image = "https://static.wikia.nocookie.net/harrypotter/images/c/ce/Lily_Potter1.jpg"
        default: return
        }
//        if self.name == "Albus Dumbledore" {
//            self.image = "https://pm1.narvii.com/7743/aad5ab12b083be42919c06becc53d9cfb1e24d0dr1-750-563v2_00.jpg"
//        }
    }


}

enum Gender: String, Codable {
    case female = "female"
    case male = "male"
}

enum House: String, Codable {
    case empty = ""
    case gryffindor = "Gryffindor"
    case hufflepuff = "Hufflepuff"
    case ravenclaw = "Ravenclaw"
    case slytherin = "Slytherin"
}

// MARK: - Wand
struct Wand: Codable {
    let wood: String
    let core: String
    let length: Double?
}
