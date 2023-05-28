//
//  InfoView.swift
//  HarryPotterAndSwiftUI
//
//  Created by Pavel Grigorev on 23.05.2023.
//

import SwiftUI

struct InfoView: View {

    var titleOn: Bool

    @Binding var rowHeight: Double

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
                        InfoRowView(character: character, rowHeight: $rowHeight)
                    }
                    .padding(.leading, 12)
//                    .listRowSeparator(.hidden)
                    .listRowInsets(.init(top: 0, leading: 0, bottom: 0, trailing: -18))
                    .background(Color("rowColor").opacity(0.9))
                }
                .navigationTitle(titleOn ? "Harry Potter & Co" : "")
                .listStyle(.plain)

//                Divider()
//                Spacer()

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
                    .foregroundColor(Color(uiColor: .secondarySystemGroupedBackground))
                    .background(Color.brown)
                    .font(.title2)
                    .bold()
                    .overlay(Capsule().stroke(lineWidth: 2))
                    .clipShape(Capsule())
                    .shadow(radius: 10)
                }
            }
            .padding(.bottom, 20)
            .background(Color("rowColor").opacity(0.8))

        }
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(titleOn: true, rowHeight: .constant(68))
    }
}
