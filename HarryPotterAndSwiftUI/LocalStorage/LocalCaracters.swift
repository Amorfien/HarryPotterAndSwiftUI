//
//  LocalCaracters.swift
//  HarryPotterAndSwiftUI
//
//  Created by Pavel Grigorev on 23.05.2023.
//

import Foundation

var localCharacters = [harryPotter, ronWeasley, hermione, draco]

fileprivate let harryPotter = Character(id: "9e3f7ce4-b9a7-4244-b709-dae5c1f1d4a8", name: "Harry Potter", alternateNames: ["The Boy Who Lived","The Chosen One"], species: "human", gender: .male, house: .gryffindor, yearOfBirth: 1980, wizard: true, ancestry: "half-blood", eyeColour: "green", hairColour: "black", wand: Wand(wood: "holly", core: "phoenix feather", length: 11), patronus: "stag", hogwartsStudent: true, hogwartsStaff: false, actor: "Daniel Radcliffe", alive: true, image: "https://ik.imagekit.io/hpapi/harry.jpg")

//{"id":"9e3f7ce4-b9a7-4244-b709-dae5c1f1d4a8","name":"Harry Potter","alternate_names":["The Boy Who Lived","The Chosen One"],"species":"human","gender":"male","house":"Gryffindor","dateOfBirth":"31-07-1980","yearOfBirth":1980,"wizard":true,"ancestry":"half-blood","eyeColour":"green","hairColour":"black","wand":{"wood":"holly","core":"phoenix feather","length":11},"patronus":"stag","hogwartsStudent":true,"hogwartsStaff":false,"actor":"Daniel Radcliffe","alternate_actors":[],"alive":true,"image":"https://ik.imagekit.io/hpapi/harry.jpg"}

fileprivate let ronWeasley = Character(id: "c3b1f9a5-b87b-48bf-b00d-95b093ea6390", name: "Ron Weasley", alternateNames: ["Dragomir Despard"], species: "human", gender: .male, house: .gryffindor, yearOfBirth: 1980, wizard: true, ancestry: "pure-blood", eyeColour: "blue", hairColour: "red", wand: Wand(wood: "willow", core: "unicorn tail-hair", length: 14), patronus: "Jack Russell terrier", hogwartsStudent: true, hogwartsStaff: false, actor: "Rupert Grint", alive: true, image: "https://ik.imagekit.io/hpapi/ron.jpg")


//{"id":"c3b1f9a5-b87b-48bf-b00d-95b093ea6390","name":"Ron Weasley","alternate_names":["Dragomir Despard"],"species":"human","gender":"male","house":"Gryffindor","dateOfBirth":"01-03-1980","yearOfBirth":1980,"wizard":true,"ancestry":"pure-blood","eyeColour":"blue","hairColour":"red","wand":{"wood":"willow","core":"unicorn tail-hair","length":14},"patronus":"Jack Russell terrier","hogwartsStudent":true,"hogwartsStaff":false,"actor":"Rupert Grint","alternate_actors":[],"alive":true,"image":"https://ik.imagekit.io/hpapi/ron.jpg"}

fileprivate let hermione = Character(id: "4c7e6819-a91a-45b2-a454-f931e4a7cce3", name: "Hermione Granger", alternateNames: [], species: "human", gender: .female, house: .gryffindor, yearOfBirth: 1979, wizard: true, ancestry: "muggleborn", eyeColour: "brown", hairColour: "brown", wand: Wand(wood: "vine", core: "dragon heartstring", length: 10.75), patronus: "otter", hogwartsStudent: true, hogwartsStaff: false, actor: "Emma Watson", alive: true, image: "https://ik.imagekit.io/hpapi/hermione.jpeg")


//{"id":"4c7e6819-a91a-45b2-a454-f931e4a7cce3","name":"Hermione Granger","alternate_names":[],"species":"human","gender":"female","house":"Gryffindor","dateOfBirth":"19-09-1979","yearOfBirth":1979,"wizard":true,"ancestry":"muggleborn","eyeColour":"brown","hairColour":"brown","wand":{"wood":"vine","core":"dragon heartstring","length":10.75},"patronus":"otter","hogwartsStudent":true,"hogwartsStaff":false,"actor":"Emma Watson","alternate_actors":[],"alive":true,"image":"https://ik.imagekit.io/hpapi/hermione.jpeg"}

fileprivate let draco = Character(id: "af95bd8a-dfae-45bb-bc69-533860d34129", name: "Draco Malfoy", alternateNames: [], species: "human", gender: .male, house: .slytherin, yearOfBirth: 1980, wizard: true, ancestry: "pure-blood", eyeColour: "grey", hairColour: "blonde", wand: Wand(wood: "hawthorn", core: "unicorn tail-hair", length: 10), patronus: "", hogwartsStudent: true, hogwartsStaff: false, actor: "Tom Felton", alive: true, image: "https://ik.imagekit.io/hpapi/draco.jpg")


//{"id":"af95bd8a-dfae-45bb-bc69-533860d34129","name":"Draco Malfoy","alternate_names":[],"species":"human","gender":"male","house":"Slytherin","dateOfBirth":"05-06-1980","yearOfBirth":1980,"wizard":true,"ancestry":"pure-blood","eyeColour":"grey","hairColour":"blonde","wand":{"wood":"hawthorn","core":"unicorn tail-hair","length":10},"patronus":"","hogwartsStudent":true,"hogwartsStaff":false,"actor":"Tom Felton","alternate_actors":[],"alive":true,"image":"https://ik.imagekit.io/hpapi/draco.jpg"}


let nonLocalDumbledore = Character(id: "b415c867-1cff-455e-b194-748662ac2cca", name: "Albus Dumbledore", alternateNames: ["Professor Dumbledore"], species: "human", gender: .male, house: .gryffindor, yearOfBirth: 1881, wizard: true, ancestry: "half-blood", eyeColour: "blue", hairColour: "silver", wand: Wand(wood: "", core: "", length: nil), patronus: "", hogwartsStudent: false, hogwartsStaff: true, actor: "Richard Harris", alive: false, image: "https://pm1.narvii.com/7743/aad5ab12b083be42919c06becc53d9cfb1e24d0dr1-750-563v2_00.jpg")


//{"id":"b415c867-1cff-455e-b194-748662ac2cca","name":"Albus Dumbledore","alternate_names":["Professor Dumbledore"],"species":"human","gender":"male","house":"Gryffindor","dateOfBirth":null,"yearOfBirth":1881,"wizard":true,"ancestry":"half-blood","eyeColour":"blue","hairColour":"silver","wand":{"wood":"","core":"","length":null},"patronus":"","hogwartsStudent":false,"hogwartsStaff":true,"actor":"Richard Harris","alternate_actors":["Michael Gambon"],"alive":false,"image":""}
