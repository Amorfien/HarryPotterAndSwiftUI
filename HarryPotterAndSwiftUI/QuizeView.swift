//
//  QuizeView.swift
//  HarryPotterAndSwiftUI
//
//  Created by Pavel Grigorev on 23.05.2023.
//

import SwiftUI

struct QuizeView: View {

    @State private var start = false

    @Binding var listSource: [Person]

    @State private var quizePerson: Person = nonLocalDumbledore
    @State private var score: Int = 0


    var body: some View {
        let imagePersons: [Person] = listSource.filter { person in
            person.image != ""
        }

        ZStack {
            LinearGradient(colors: [.cyan, .blue, .indigo, .mint, .white], startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()

            Image("houses")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .opacity(0.3)

            VStack {
                HStack {
                    Button {
                        if start && quizePerson.house == .gryffindor {
                            score += 1
                        }
                        quizePerson = imagePersons.randomElement()!
                    } label: {
                        Image("Gryffindor")
                            .houseImage()
                    }
                    Spacer()
                    Text(String(score))
                        .font(.largeTitle)
                        .padding(5)
                        .overlay {
                            RoundedRectangle(cornerRadius: 5).stroke(Color(.black), lineWidth: 1)
                        }
                    Spacer()
                    Button {
                        if start && quizePerson.house == .slytherin {
                            score += 1
                        }
                        quizePerson = imagePersons.randomElement()!
                    } label: {
                        Image("Slytherin")
                            .houseImage()
                    }
                }
                Spacer()

                if !start {
                    Button {
                        start = true
                    } label: {

                        Image(systemName: "play.square")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(height: 220)

                    }
                    .tint(.pink)
//                    .animation(.easeInOut(duration: 2).repeatForever(autoreverses: true), value: start)
                } else {
                    Button {

                        quizePerson = imagePersons.randomElement()!
                    } label: {

//                        let person = listSource.randomElement()
                        AsyncImage(url: URL(string: quizePerson.image), content: { imagePhase in
                            imagePhase.image?
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(height: 260)
                                .clipShape(RoundedRectangle(cornerRadius: 20))
                                .shadow(color: Color(.black), radius: 15)

                        })
                    }
                }

                Spacer()
                HStack {
                    Button {
                        if start && quizePerson.house == .hufflepuff {
                            score += 1
                        }
                        quizePerson = imagePersons.randomElement()!
                    } label: {
                        Image("Hufflepuff")
                            .houseImage()
                    }
                    Spacer()
                    Button {
                        if start && quizePerson.house == .ravenclaw {
                            score += 1
                        }
                        quizePerson = imagePersons.randomElement()!
                    } label: {
                        Image("Ravenclaw")
                            .houseImage()
                    }
                }
            }

        }

    }
}

struct HelloView_Previews: PreviewProvider {
    static var previews: some View {
        QuizeView(listSource: .constant(localCharacters))
    }
}
