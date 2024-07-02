//
//  CustomColorPicker.swift
//  Snapshot-ios-sample
//
//  Created by Rami LAJMI on 23/05/2024.
//

import SwiftUI

struct CustomColorPicker: View {
    @State var headerLabel: String
    @State var placeHolder: String
    let colors: [(Color, String)]
    @State var selColorIndexPicker: Int = 0

    var body: some View {
        Section(
            header: Text(headerLabel),
            footer:
                HStack {
                    Image(systemName: "info.bubble.fill")
                        .resizable()
                        .frame(width: 45, height: 45)
                    Text("Définissez votre couleur préférée")
                        .foregroundStyle(Color.red)
                        .padding(.leading, 5)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.top, 10)
                .background(Color.clear)
        ) {
            HStack {
                Capsule()
                    .fill(colors[selColorIndexPicker].0)
                    .frame(width: 15, height: 25)

                Picker(placeHolder, selection: $selColorIndexPicker) {
                    ForEach(0 ..< colors.count, id: \.self) { index in
                        Text(self.colors[index].1)
                    }
                }
            }
        }
    }
}
