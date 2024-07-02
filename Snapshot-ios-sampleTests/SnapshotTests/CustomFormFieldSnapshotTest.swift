//
//  CustomFormFieldSnapshotTest.swift
//  Snapshot-ios-sampleTests
//
//  Created by Rami LAJMI on 23/05/2024.
//

import XCTest
import SwiftUI
import SnapshotTesting
@testable import Snapshot_ios_sample

final class CustomFormFieldSnapshotTest: XCTestCase {
    func testCustomTextField() throws {
        // Setting up the state for testing
        let value = "exemple@exemple.fr"
                
        // Create the custom text field view
        let customTextFieldView = Form {
            CustomTextField(headerLabel: "Adresse e-mail", placeHolder: "exemple@exemple.fr", value: .constant(value))
        }
                
        // Embed the custom text field in a hosting controller
        let hostingController = UIHostingController(rootView: customTextFieldView)
        hostingController.view.frame = UIScreen.main.bounds
                
        // Assert snapshot
        assertSnapshot(matching: hostingController, as: .image)
    }
    
    func testTextFieldInputValidation() {
        let value = Binding.constant("")
        let customTextField = CustomTextField(headerLabel: "Username", placeHolder: "Enter your username", value: value)
        
        let hostingController = UIHostingController(rootView: customTextField)
        hostingController.view.frame = CGRect(x: 0, y: 0, width: 300, height: 60)
        
        // Simulez l'entrée de l'utilisateur
        value.wrappedValue = "validUsername"
        assertSnapshot(matching: hostingController, as: .image, named: "Valid Input")
        
        value.wrappedValue = ""
        assertSnapshot(matching: hostingController, as: .image, named: "Empty Input")
        
        value.wrappedValue = String(repeating: "x", count: 1000)  // très longue chaîne
        assertSnapshot(matching: hostingController, as: .image, named: "Extreme Long Input")
    }

    
    func testDynamicPropertyChanges() {
        let value = Binding.constant("initial value")
        var customTextField = CustomTextField(headerLabel: "Initial Header", placeHolder: "Initial Placeholder", value: value)
        
        // Mise à jour des propriétés
        customTextField.headerLabel = "Updated Header"
        customTextField.placeHolder = "Updated Placeholder"
        
        let controller = UIHostingController(rootView: customTextField)
        controller.view.frame = CGRect(x: 0, y: 0, width: 300, height: 60)
        
        assertSnapshot(matching: controller, as: .image, named: "Updated Properties")
    }
}
