//
//  HomeViewSnapshotTest.swift
//  Snapshot-ios-sampleTests
//
//  Created by Rami LAJMI on 24/05/2024.
//

import XCTest
import SwiftUI
import SnapshotTesting
@testable import Snapshot_ios_sample

final class HomeViewSnapshotTest: XCTestCase {
    func testMyViewRecursiveDescription() {
        let view = HomeView()
        assertSnapshot(of: view, as: .recursiveDescription)
    }
}
