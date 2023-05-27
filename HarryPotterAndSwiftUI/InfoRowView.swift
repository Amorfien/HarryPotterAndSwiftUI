//
//  InfoRowView.swift
//  HarryPotterAndSwiftUI
//
//  Created by Pavel Grigorev on 23.05.2023.
//

import SwiftUI

struct InfoRowView: View {

    let character: Character
    var rowHeight = 68.0

    var body: some View {
        HStack {
//            Image(character.image)
            AsyncImage(url: URL(string: character.image), content: { imagePhase in
                imagePhase.image?
                    .resizable()
                    .scaledToFill()
                    .clipShape(Circle())
                    .frame(width: rowHeight - 8, height: rowHeight - 8)
                    .padding(.leading, 4)
            })

            Text(character.name)
                .padding(.leading, 8)
                .lineLimit(2)
                .minimumScaleFactor(0.5)

            Spacer()
            if character.wizard {
                Text(character.name == "Rubeus Hagrid" ? "🌂" : "🪄")
                    .font(.largeTitle)
                    .padding(.bottom, 4)
            }
            Image(character.house.rawValue)
                .resizable()
                .scaledToFit()
                .frame(width: 50, height: rowHeight * 0.75)
        }
        .frame(height: rowHeight)
        .background(Color("rowColor"))
    }
}

struct InfoRowView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            InfoRowView(character: nonLocalDumbledore)
            InfoRowView(character: localCharacters[3])
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
