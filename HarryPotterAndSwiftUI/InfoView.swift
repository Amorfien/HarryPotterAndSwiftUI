//
//  InfoView.swift
//  HarryPotterAndSwiftUI
//
//  Created by Pavel Grigorev on 23.05.2023.
//

import SwiftUI

struct InfoView: View {

    var titleOn: Bool

    @State private var fullData = false
    @State private var listSource = localCharacters

    var body: some View {
        // navigation view for master - details architecture
        NavigationView {
            VStack {
                List(listSource) { character in
                    NavigationLink {
                        InfoDetailsView(character: character)
                    } label: {
                        InfoRowView(character: character)
                    }
//                    .listRowSeparator(.hidden)
                    .listRowInsets(.init(top: 0, leading: 0, bottom: 0, trailing: -18))
                }
                .navigationTitle(titleOn ? "Harry Potter & Co" : "")
                .listStyle(.plain)

                Divider()

                if !fullData {
                    Button {
                        let apiService = APIservice()
                        apiService.getAllCharacters { characters in
                            self.listSource = characters
                            self.fullData = true
                        }
                    } label: {
                        Text("Download full data")
                    }
                    .padding(16)
                    .foregroundColor(.blue)
                    .background(Color.mint.opacity(0.5))
                    .font(.title2)
                    .bold()
                    .clipShape(Capsule())
                    .shadow(radius: 10)
                }
            }
            .padding(.bottom)

        }
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(titleOn: true)
    }
}
