//
//  CustomColorPickerSnapshotTest.swift
//  Snapshot-ios-sampleTests
//
//  Created by Rami LAJMI on 23/05/2024.
//

import XCTest
import SwiftUI
import SnapshotTesting
@testable import Snapshot_ios_sample

final class CustomColorPickerSnapshotTest: XCTestCase {
    func testCustomColorPickerInitialDisplay() {
        let colors: [(Color, String)] = [(.red, "Red"), (.green, "Green"), (.blue, "Blue")]
        let customColorPicker = CustomColorPicker(headerLabel: "Choose your favorite color", placeHolder: "Select Color", colors: colors)
        
        let hostingController = UIHostingController(rootView: customColorPicker)
        hostingController.view.frame = CGRect(x: 0, y: 0, width: 300, height: 200)
        
        assertSnapshot(matching: hostingController, as: .image)
    }
    
    func testColorSelectionChange() {
        let colors: [(Color, String)] = [(.red, "Red"), (.green, "Green"), (.blue, "Blue")]
        let customColorPicker = CustomColorPicker(headerLabel: "Favorite Color", placeHolder: "Select Color", colors: colors)
        
        let hostingController = UIHostingController(rootView: customColorPicker)
        hostingController.view.frame = CGRect(x: 0, y: 0, width: 300, height: 200)
        
        // Change selection and retest
        customColorPicker.selColorIndexPicker = 1  // Change selection to green
        assertSnapshot(matching: hostingController, as: .image, named: "Green Selected")
    }

    func testDynamicProperties() {
        let colors: [(Color, String)] = [(.red, "Red"), (.green, "Green"), (.blue, "Blue")]
        var customColorPicker = CustomColorPicker(headerLabel: "Initial Title", placeHolder: "Initial Placeholder", colors: colors)
        
        let hostingController = UIHostingController(rootView: customColorPicker)
        hostingController.view.frame = CGRect(x: 0, y: 0, width: 300, height: 200)
        
        // Update properties
        customColorPicker.headerLabel = "Updated Title"
        customColorPicker.placeHolder = "Updated Placeholder"
        
        assertSnapshot(matching: hostingController, as: .image, named: "Updated Properties")
    }
}
