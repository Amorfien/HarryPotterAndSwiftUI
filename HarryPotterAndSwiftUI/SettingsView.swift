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

    @State private var slider = 60.0

    var body: some View {

        Form {
            Section {
                Text(colorScheme == .dark ? "Dark Theme enabled" : "Light Theme enabled")
                    .padding(.vertical)
            }
            Section {
                Toggle("Display first screen title", isOn: $titleOn)
                    .padding(.top)
                Text("Navigation title is " + (titleOn ? "enable" : "disable"))
                    .padding(.bottom)
                    .font(.callout)
            }



            Section {

                Slider(value: $slider , in: 20...100)
                    .padding(.bottom)
                InfoRowView(character: nonLocalDumbledore, rowHeight: slider)
                    .overlay {
                        Rectangle().stroke()
                    }
                    .padding(.vertical, 30)
                    .padding(.horizontal, -20)

            }
//            .frame(height: 100)




        }




    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView(titleOn: .constant(true))
    }
}
