//
//  DeviceListView.swift
//  Snapshot-ios-sample
//
//  Created by Rami LAJMI on 03/07/2024.
//

import SwiftUI

struct DeviceListView: View {
    @State private var textValue: String = ""
    @FocusState private var isFocused: Bool

    var body: some View {
        NavigationView {
            VStack {
                Spacer().frame(height: 15)
                List(getDevices()) { device in
                    DeviceCard(device: device)
                }
                .listStyle(PlainListStyle())
                .padding(.vertical, 10)
            }
            .navigationTitle("Device List")
        }
    }
}

#Preview {
    DeviceListView()
}

extension Color {
    init(hex: Int, alpha: Double = 1.0) {
        self.init(
            .sRGB,
            red: Double((hex >> 16) & 0xFF) / 255.0,
            green: Double((hex >> 8) & 0xFF) / 255.0,
            blue: Double(hex & 0xFF) / 255.0,
            opacity: alpha
        )
    }
}
