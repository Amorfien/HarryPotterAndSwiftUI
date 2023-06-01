//
//  QuizeView.swift
//  HarryPotterAndSwiftUI
//
//  Created by Pavel Grigorev on 23.05.2023.
//

import SwiftUI

struct QuizeView: View {

    @State private var start = false

    var body: some View {

        ZStack {
            LinearGradient(colors: [.cyan, .blue, .indigo, .mint, .white], startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()

            Image("houses")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .opacity(0.4)

            VStack {
                HStack {
                    Image("Gryffindor")
                        .houseImage()
                    Spacer()
                    Image("Slytherin")
                        .houseImage()
                }
                Spacer()

                if !start {
                    Button {
                        start = true
                    } label: {

                        Image(systemName: "questionmark.square.dashed")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(height: 220)

                    }
                    .tint(.black)
                } else {
                    AsyncImage(url: URL(string: "https://static.wikia.nocookie.net/harrypotter/images/c/c8/Nymphadora_Tonks_DH_promo_headshot_.jpg"), content: { imagePhase in
                        imagePhase.image?
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(height: 260)
                            .clipShape(RoundedRectangle(cornerRadius: 20))
                            .shadow(color: Color(.black), radius: 15)

                    })
                }

                Spacer()
                HStack {
                    Image("Hufflepuff")
                        .houseImage()
                    Spacer()
                    Image("Ravenclaw")
                        .houseImage()
                }
            }

        }

    }
}

struct HelloView_Previews: PreviewProvider {
    static var previews: some View {
        QuizeView()
    }
}
