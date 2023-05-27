//
//  ContentView.swift
//  HarryPotterAndSwiftUI
//
//  Created by Pavel Grigorev on 23.05.2023.
//

import SwiftUI

struct ContentView: View {

    @AppStorage("title") private var titleOn: Bool = true
    @State private var slider = 68.0

    var body: some View {

        TabView() {

            InfoView(titleOn: titleOn, rowHeight: $slider)
                .tabItem {
                    Label("Database", systemImage: "person.3.fill")
                }
            HelloView()
                .tabItem {
                    Label("Hello", systemImage: "globe")
                }
            SettingsView(titleOn: $titleOn, slider: $slider)
                .tabItem {
                    Label("Settings", systemImage: "gear")
                }

        }
        .tint(.primary)

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
