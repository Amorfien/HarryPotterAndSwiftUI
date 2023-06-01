//
//  QuizeView.swift
//  HarryPotterAndSwiftUI
//
//  Created by Pavel Grigorev on 23.05.2023.
//

import SwiftUI

struct QuizeView: View {

    @Binding var listSource: [Person]

    @State private var start = false
    @State private var quizePerson: Person = nonLocalDumbledore
    @State private var score: Int = 0

    @State private var rightAnswer: Bool = false

    @State private var onApearVar = false


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
                        rightAnswer = quizePerson.house == .gryffindor
                        if start && rightAnswer {
                            withAnimation {
                                score += 1
                            }
                        }
                        quizePerson = imagePersons.randomElement()!
                    } label: {
                        Image("Gryffindor")
                            .houseImage()
                            .opacity(start ? 1 : 0.4)

                    }
                    Spacer()
                    if start {
                        Text(String(score))
                            .font(.largeTitle)
                            .padding(8)
                            .overlay {
                                RoundedRectangle(cornerRadius: 5).stroke(Color(rightAnswer ? .green : .black), lineWidth: rightAnswer ? 4 : 2)
                            }
                            .animation(.easeInOut(duration: 0.5), value: rightAnswer)
                        Spacer()
                    }
                    Button {
                        rightAnswer = quizePerson.house == .slytherin
                        if start && rightAnswer {
                            withAnimation {
                                score += 1
                            }
                        }
                        quizePerson = imagePersons.randomElement()!
                    } label: {
                        Image("Slytherin")
                            .houseImage()
                            .opacity(start ? 1 : 0.4)
                    }
                }
                Spacer()

                if !start {
                    Button {
                        withAnimation {
                            start = true
                        }
                    } label: {

                        Image(systemName: "play.square")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(height: 220)
                            .padding(15)
                            .overlay {
                                RoundedRectangle(cornerRadius: 40).stroke(Color(uiColor: onApearVar ? .systemYellow : .green), lineWidth: onApearVar ? 5 : 10)
                            } .animation(.easeOut(duration: 1).repeatForever(autoreverses: true), value: onApearVar)

                    }
                    .tint(.pink)

                } else {

                    AsyncImage(url: URL(string: quizePerson.image), content: { imagePhase in
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
                    Button {
                        rightAnswer = quizePerson.house == .hufflepuff
                        if start && rightAnswer {
                            withAnimation {
                                score += 1
                            }
                        }
                        quizePerson = imagePersons.randomElement()!
                    } label: {
                        Image("Hufflepuff")
                            .houseImage()
                            .opacity(start ? 1 : 0.4)
                    }
                    Spacer()
                    if start {
                        Button {
                            score = 0
                            start = false
                        } label: {

                            Image(systemName: "gobackward")
                                .font(.largeTitle).bold()

                        }
                        .tint(.black)
                        Spacer()
                    }
                    Button {
                        rightAnswer = quizePerson.house == .ravenclaw
                        if start && rightAnswer {
                            withAnimation {
                                score += 1
                            }
                        }
                        quizePerson = imagePersons.randomElement()!
                    } label: {
                        Image("Ravenclaw")
                            .houseImage()
                            .opacity(start ? 1 : 0.4)
                    }
                }
            }

        }
        .onAppear {
            onApearVar = true
        }

    }
}

struct HelloView_Previews: PreviewProvider {
    static var previews: some View {
        QuizeView(listSource: .constant(localCharacters))
    }
}
