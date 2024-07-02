//
//  SimpleUserButton.swift
//  Snapshot-ios-sample
//
//  Created by Rami LAJMI on 03/07/2024.
//

import SwiftUI

struct SimpleUserButton: View {
    let label: String
    let icon: Image
    let backgroundColor: Color

    var body: some View {
        Button(action: {}, label: {
            HStack {
                icon.foregroundColor(.white)
                Text(label)
                    .foregroundColor(.white)
                    .font(.system(size: 14, weight: .bold))
            }
            .padding()
            .background(backgroundColor)
            .cornerRadius(8)
        })
    }
}
