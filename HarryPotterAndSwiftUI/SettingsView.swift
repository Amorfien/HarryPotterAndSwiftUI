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
//    @State private var isChanging = false

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
            }
            Section {
                Toggle("Display first screen title", isOn: $titleOn)
                    .padding(.top)
                Text("Navigation title is " + (titleOn ? "enable" : "disable"))
                    .padding(.bottom)
                    .font(.callout)
            }



            Section {

                Text("You can change row width here:")
                Slider(value: $slider , in: 30...120)
                    .padding(.bottom)
                InfoRowView(character: nonLocalDumbledore, rowHeight: $slider)
                    .overlay {
                        Rectangle().stroke()
                    }
                    .padding(.vertical, 30)
                    .padding(.horizontal, -20)
                    .frame(height: 150)

            }

        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView(titleOn: .constant(true), slider: .constant(60))
    }
}
