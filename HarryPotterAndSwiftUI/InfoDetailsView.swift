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
        // wrap a post for vertical scrolling
        ScrollView {
            // full width image
            AsyncImage(url: URL(string: character.image), content: { imagePhase in
                imagePhase.image?
                    .resizable()
                    .scaledToFit()
                    .padding(.top, 12)
                    .shadow(radius: 10)
            })


            // text decription
            VStack(alignment: .leading) {
                HStack{
                    Text(character.name)
                        .font(.title2).fontWeight(.bold)
                        .foregroundColor(.white)
                    Spacer()
                        if character.alive {
                            Text("✅")
                        } else {
                            Text("❌")
                        }
                }
                Text(character.alternateNames.first ?? "")
                    .font(.caption)
                    .foregroundColor(Color(uiColor: .systemGray5))

                Divider()

                VStack(alignment: .leading){
                    Text("Actor: \(character.actor)")
                    Text("Ancestry: \(character.ancestry)")
                    Text("Eye color: \(character.eyeColour), hair color: \(character.hairColour)")
                    Text("\(character.yearOfBirth ?? 0000)")
                }
                .foregroundColor(Color(uiColor: .systemGray3))
            }
            .padding()
        }
        .navigationTitle(character.name)
        .background(Color(.darkGray))
    }
}

struct InfoDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        InfoDetailsView(character: localCharacters[0])
    }
}
