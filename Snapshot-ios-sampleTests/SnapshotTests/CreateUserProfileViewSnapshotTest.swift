//
//  CreateUserProfileViewSnapshotTest.swift
//  Snapshot-ios-sampleTests
//
//  Created by Rami LAJMI on 22/05/2024.
//

import XCTest
import SwiftUI
import SnapshotTesting
@testable import Snapshot_ios_sample

final class CreateUserProfileViewSnapshotTest: XCTestCase {
    func testCreateUserProfileView() throws {
        let createUserProfileView = CreateUserProfileView()
        let vc = UIHostingController(rootView: createUserProfileView)
        vc.view.frame = UIScreen.main.bounds
        
        assertSnapshot(of: vc, as: .image)
    }
    
    func testCreateUserProfileViewWithDefaults() {
            let view = CreateUserProfileView()
            let hostingController = UIHostingController(rootView: view)
            hostingController.view.frame = UIScreen.main.bounds
            
            assertSnapshot(matching: hostingController, as: .image)
        }

        func testCreateUserProfileViewWithFilledFields() {
            let view = CreateUserProfileView()
            view.firstName = "Alice"
            view.lastName = "Smith"
            view.userName = "alice_smith"
            view.email = "alice@example.com"

            let hostingController = UIHostingController(rootView: view)
            hostingController.view.frame = UIScreen.main.bounds
            
            assertSnapshot(matching: hostingController, as: .image(perceptualPrecision: 0.99), named: "FilledFields")
        }
        
        func testCreateUserProfileViewColorPicker() {
            var view = CreateUserProfileView()
            view.selColorIndexPicker = 3

            let hostingController = UIHostingController(rootView: view)
            hostingController.view.frame = UIScreen.main.bounds
            
            assertSnapshot(matching: hostingController, as: .image, named: "ColorPickerGreenSelected")
        }
    
        func testMyViewRecursiveDescription() {
            let view = CreateUserProfileView()
            
            let hostingController = UIHostingController(rootView: view)
            hostingController.view.frame = UIScreen.main.bounds
            
            assertSnapshot(matching: hostingController, as: .recursiveDescription)
        }
}
