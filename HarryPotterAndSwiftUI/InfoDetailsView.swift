//
//  InfoDetailsView.swift
//  HarryPotterAndSwiftUI
//
//  Created by Pavel Grigorev on 23.05.2023.
//

import SwiftUI

struct InfoDetailsView: View {

    var character: Character

    var body: some View {
        ScrollView {
            AsyncImage(url: URL(string: character.image), content: { imagePhase in
                imagePhase.image?
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(20)
                    .overlay(content: {
                        RoundedRectangle(cornerRadius: 20, style: .circular).stroke(.foreground, lineWidth: 5)
                    })
                    .padding(.horizontal, 50)
                    .shadow(radius: 15)
            })


            // text decription
            VStack() {
                HStack {
                    Text(character.name)
                        .font(.title2).fontWeight(.bold)
                        .foregroundColor(.white)
                    Spacer()
                    Text(character.alive ? "✅" : "❌")
                }
                .padding(.horizontal, 40)

                HStack {
                    Text(character.alternateNames.joined(separator: ", "))
                        .font(.caption)
                        .foregroundColor(Color(uiColor: .systemGray3))
                    Spacer()
                }
                .padding(.horizontal, 40)

                Divider()

                VStack {
                    makeHStack("Species:", character.species)
                    makeHStack("Wizard:", character.wizard ? "✔️" : "✖️")
                    makeHStack("House:", character.house.rawValue)
                    makeHStack("Gender:", character.gender == .female ? "♀" : "♂")
                    makeHStack("Ancestry:", character.ancestry)
                    makeHStack("Eye color:", character.eyeColour)
                    makeHStack("Hair color:", character.hairColour)
                    makeHStack("Year of birth", String(character.yearOfBirth ?? 0))
                    makeHStack("Patronus:", character.patronus)
                    makeHStack("Student:", character.hogwartsStudent ? "✔️" : "✖️")
                }
                .foregroundColor(Color(uiColor: .systemGray6))
                .padding(.horizontal)
                VStack {
                    makeHStack("Staff:", character.hogwartsStaff ? "✔️" : "✖️")
                    makeHStack("Actor:", character.actor)
                }
                .foregroundColor(Color(uiColor: .systemGray6))
                .padding(.horizontal)
            }
            .padding()
        }
//        .navigationTitle(character.name)
        .background(Color(.gray))
    }

    private func makeHStack(_ key: String, _ value: String) -> some View {
        return HStack {
            Text(key)
            Spacer()
            Text(value)
            Divider()
        }
    }

}

struct InfoDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        InfoDetailsView(character: localCharacters[0])
    }
}
