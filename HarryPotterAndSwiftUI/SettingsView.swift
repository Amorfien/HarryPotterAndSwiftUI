//
//  SettingsView.swift
//  HarryPotterAndSwiftUI
//
//  Created by Pavel Grigorev on 23.05.2023.
//

import SwiftUI

struct SettingsView: View {

    @Environment(\.colorScheme) var colorScheme
    @Binding var titleOn: Bool

    @Binding var slider: Double
    @State private var isChanging = false //{
//        willSet {
//            if newValue == false {
//                sleep(1)
//            }
//        }
//    }

    var body: some View {

        Form {
            Section {
                HStack {
                    Text(colorScheme == .dark ? "Dark Theme enabled" : "Light Theme enabled")
                        .padding(.vertical)
                    Spacer()
                    Image(systemName: colorScheme == .dark ? "moon.fill" : "sun.max.fill")
                        .foregroundColor(.yellow)
                        .imageScale(.large)
                }
                .padding(.vertical, -10)
            }
            Section {
                Toggle("Display first screen title", isOn: $titleOn)
                    .padding(.top)
                HStack {
                    Spacer()
                    Text("navigation title is " + (titleOn ? "enable" : "disable"))
                        .padding(.top, -10)
                        .font(.callout)
                        .foregroundColor(.secondary)
                }
            }



            Section {

                Label("you can change row height here:", systemImage: "rectangle.compress.vertical")
                    .foregroundColor(.secondary)
                    .padding(.bottom, -10)
                Slider(value: $slider , in: 45...150, onEditingChanged: { change in
                    withAnimation(.easeIn(duration: 2)) {
                        isChanging = change
                    }
                })
                    .padding(.bottom)

                if isChanging {
                    InfoRowView(character: nonLocalDumbledore, rowHeight: $slider)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        .overlay {
                            RoundedRectangle(cornerRadius: 10).stroke(Color(uiColor: .systemGray))
                        }
                        .padding(.vertical, 30)
                        .padding(.horizontal, -16)
                        .frame(height: slider - 16)
                }
            }

        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView(titleOn: .constant(true), slider: .constant(60))
    }
}
