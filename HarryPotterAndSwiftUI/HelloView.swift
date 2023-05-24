//
//  HelloView.swift
//  HarryPotterAndSwiftUI
//
//  Created by Pavel Grigorev on 23.05.2023.
//

import SwiftUI

struct HelloView: View {
    var body: some View {
        ZStack{
            Color(.green)
                .ignoresSafeArea()
            VStack {
                Spacer()
                AsyncImage(url: URL(string: "https://ik.imagekit.io/hpapi/voldemort.jpg"))
                    .clipShape(Capsule(style: .continuous))
                    .shadow(color: .red, radius: 30, x: 10, y: 10)
                Spacer()
                Text("Hello!")
                    .font(.largeTitle)
                Spacer()

            }

        }
    }
}

struct HelloView_Previews: PreviewProvider {
    static var previews: some View {
        HelloView()
    }
}
