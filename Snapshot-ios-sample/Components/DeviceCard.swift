//
//  DeviceCard.swift
//  Snapshot-ios-sample
//
//  Created by Rami LAJMI on 03/07/2024.
//

import SwiftUI

struct DeviceCard: View {
    let device: DeviceDataItem

    var body: some View {
        VStack {
            HStack {
                Image(uiImage: UIImage(named: device.image)!)
                    .resizable()
                    .frame(width: 80, height: 100)
                VStack(alignment: .leading, spacing: 6) {
                    Text(device.name)
                        .font(.system(size: 14, weight: .semibold))
                        .foregroundColor(.primary)
                    Text("Version OS: \(device.osVersion)")
                        .foregroundColor(.secondary)
                    Text(device.releaseYear)
                        .foregroundColor(.secondary)
                    Spacer()
                }
                .padding(.top)
                Spacer()
                Button(action: {
                            
                }) {
                    ZStack {
                        RoundedRectangle(cornerRadius: 10)
                            .fill(Color(hex: 0xFF30336b))
                            .frame(width: 60, height: 60)
                        
                        Image(systemName: "plus")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 20, height: 20)
                            .foregroundColor(.white)
                    }
                }
                .buttonStyle(PlainButtonStyle())
            }
            
            HStack {
                SimpleUserButton(label: "Activer", icon: Image(systemName: "checkmark"), backgroundColor: Color(hex: 0xFF4834d4).opacity(0.4))
                SimpleUserButton(label: "Localiser", icon: Image(systemName: "location"), backgroundColor: Color(hex: 0xFF4834d4))
            }
            .padding(.horizontal, 25)
            .padding(.vertical, 15)
        
        }
        .padding(14)
        .background(Color.white)
        .cornerRadius(8)
        .shadow(radius: 4)
        .padding(8)
    }
}
