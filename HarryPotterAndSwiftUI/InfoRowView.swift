//
//  InfoRowView.swift
//  HarryPotterAndSwiftUI
//
//  Created by Pavel Grigorev on 23.05.2023.
//

import SwiftUI

struct InfoRowView: View {

    let character: Character
//    let url = URL(string: character.image)

    var body: some View {
        HStack {
//            Image(character.image)
            AsyncImage(url: URL(string: character.image), content: { imagePhase in
                imagePhase.image?
                    .resizable()
                    .scaledToFill()
                    .clipShape(Circle())
                    .frame(width: 60, height: 60)
                    .padding(.trailing, 12)
            })

            Text(character.name)

            Spacer()
            if character.wizard {
                if character.name == "Rubeus Hagrid" {
                    Text("🌂")
                } else {
                    Text("🪄")
                }
            }
            Image(character.house.rawValue)
                .resizable()
                .scaledToFit()
                .frame(width: 50, height: 50)
        }
    }
}

struct InfoRowView_Previews: PreviewProvider {
    static var previews: some View {
        InfoRowView(character: nonLocalDumbledore)
    }
}
