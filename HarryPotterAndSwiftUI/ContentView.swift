//
//  ContentView.swift
//  HarryPotterAndSwiftUI
//
//  Created by Pavel Grigorev on 23.05.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {

        TabView() {

            InfoView()
                .tabItem {
                    Label("Database", systemImage: "person.3.fill")
                }
            HelloView()
                .tabItem {
                    Label("Hello", systemImage: "globe")
                }
            SettingsView()
                .tabItem {
                    Label("Settings", systemImage: "gear")
                }

        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
