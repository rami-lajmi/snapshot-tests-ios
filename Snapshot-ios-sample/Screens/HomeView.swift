//
//  HomeView.swift
//  Snapshot-ios-sample
//
//  Created by Rami LAJMI on 24/05/2024.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ZStack {
        
                    HStack {
                        Text("Hello, World!")
                        Spacer()
                        Image(systemName: "star")
                    }
            Button(action: {
                print("Button clicked")
            }) {
                Text("Click Me")
            }
                }
                
            
    }
}

#Preview {
    HomeView()
}
