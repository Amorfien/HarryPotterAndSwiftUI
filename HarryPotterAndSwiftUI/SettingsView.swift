//
//  SettingsView.swift
//  HarryPotterAndSwiftUI
//
//  Created by Pavel Grigorev on 23.05.2023.
//

import SwiftUI

struct SettingsView: View {

    @State private var toggler = false
    @State private var slider = 50.0
    @State private var picker = 5
    let randomArray = ["1", "76", "5"," 7", "2", "12", "24", "14", "34"]

    var body: some View {

        Form {
            Section {
                Text("Section 1")
            }
            Section {
                Toggle("HomeWorkSUI-1", isOn: $toggler)
                Text(toggler ? "Зачёт 😃" : "Незачёт 😢")
            }
            .padding(.vertical, 12)

            Slider(value: $slider , in: 0...100)

            Section {

                Picker(selection: $picker) {
                    ForEach(0..<randomArray.count) { index in
                        Text(self.randomArray[index])
                    }

                } label: {
                    Text("Some picker")
                }
                .pickerStyle(.wheel)
                .frame(width: 100)


            }



        }




    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
