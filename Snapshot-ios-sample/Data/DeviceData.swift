//
//  DeviceData.swift
//  Snapshot-ios-sample
//
//  Created by Rami LAJMI on 03/07/2024.
//

import Foundation

struct DeviceDataItem: Identifiable {
    let id = UUID()
    let name: String
    let osVersion: String
    let releaseYear: String
    let image: String
}

func getDevices() -> [DeviceDataItem] {
    return [
        DeviceDataItem(name: "iPhone 15 Pro", osVersion: "11", releaseYear: "2023", image: "iphone_15_pro"),
        DeviceDataItem(name: "Samsung Galaxy", osVersion: "11", releaseYear: "2021", image: "samsung_galaxy")
    ]
}
