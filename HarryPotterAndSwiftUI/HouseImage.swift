//
//  HouseImage.swift
//  HarryPotterAndSwiftUI
//
//  Created by Pavel Grigorev on 01.06.2023.
//

import SwiftUI

extension Image {
  func houseImage() -> some View {
    self
          .resizable()
          .aspectRatio(contentMode: .fit)
          .frame(height: 152)
          .padding(12)
  }
}
