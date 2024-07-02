//
//  CustomTextField.swift
//  Snapshot-ios-sample
//
//  Created by Rami LAJMI on 23/05/2024.
//

import SwiftUI

struct CustomTextField: View {
    @State var headerLabel: String
    @State var placeHolder: String
    @Binding var value: String
    var body: some View {
            Section(header: Text(headerLabel)) {
                TextField(placeHolder, text: $value)
            }
    }
}
