//
//  UserInput.swift
//  Snapshot-ios-sample
//
//  Created by Rami LAJMI on 03/07/2024.
//

import SwiftUI

//struct UserInput: View {
//    var label: String?
//    var placeholder: String?
//    var icon: Image
//    var modifier: EdgeInsets = EdgeInsets(top: 10, leading: 5, bottom: 0, trailing: 20)
//    var labelColor: Color = Color(red: 0.1, green: 0.16, blue: 0.34).opacity(0.5)
//    var iconColor: Color = Color(red: 0.1, green: 0.16, blue: 0.34).opacity(0.5)
//    @FocusState var isFocused: Bool
//    @Binding var textState: String
//    var onValueChanged: (String) -> Void
//    var onClick: () -> Void
//
//    @State private var isLastNameTextFieldFocused: Bool = false
//    private let maxLength = 110
//
//    var body: some View {
//        TextField(
//            placeholder ?? "N/A",
//            text: $textState,
//            onEditingChanged: { isFocused in
//                self.isLastNameTextFieldFocused = isFocused
//            }
//        )
//        .padding(8)
//        .frame(height: 60)
//        .overlay(
//            RoundedRectangle(cornerRadius: 10)
//                .stroke(Color(red: 0.81, green: 0.84, blue: 0.88).opacity(0.5), lineWidth: 1)
//        )
//        .background(
//            RoundedRectangle(cornerRadius: 10)
//                .fill(Color(red: 0.78, green: 0.92, blue: 0.93).opacity(0.4))
//        )
//        .overlay(
//            HStack {
//                icon
//                    .foregroundColor(Color.gray.opacity(0.6))
//                    .padding(.leading, 8)
//                Spacer()
//                if textState.isNotEmpty && isLastNameTextFieldFocused {
//                    Button(action: {
//                        textState = ""
//                    }) {
//                        Image(systemName: "xmark.circle.fill")
//                            .foregroundColor(Color.gray.opacity(0.5))
//                    }
//                    .padding(.trailing, 8)
//                }
//            }
//        )
//        .focused($isFocused)
//        .onChange(of: textState) { newValue in
//            if newValue.count <= maxLength {
//                onValueChanged(newValue)
//            } else {
//                textState = String(newValue.prefix(maxLength))
//            }
//        }
//        .padding(modifier)
//    }
//}
//
//struct UserInput_Previews: PreviewProvider {
//    static var previews: some View {
//        UserInput(
//            label: "Label",
//            placeholder: "Find a device",
//            icon: Image(systemName: "magnifyingglass"),
//            textState: .constant(""),
//            onValueChanged: { _ in },
//            onClick: {}
//        )
//    }
//}
