//
//  SettingsView.swift
//  Notes WatchKit Extension
//
//  Created by Deep Bose on 6/27/21.
//

import SwiftUI

struct SettingsView: View {
    
    // MARK: - PROPERTIES
    
    @AppStorage("lineCount") var lineCount: Int = 1
    @State private var value: Float = 1.0
    
     // MARK: - FUNCTION
    
    func update() {
        lineCount = Int(value)
    }
    
    // MARK: - BODY
    
    var body: some View {
        VStack(spacing: 8) {
            // Header
            HeaderView(title: "Settings")
            
            // Actual line count
            Text("Lines: \(lineCount).".uppercased())
                .fontWeight(.bold)
            
            // Slider
            Slider(value: Binding(get: {
                self.value
            }, set: {(newValue) in
                self.value = newValue
                self.update()
            }), in: 1...44, step: 1)
                .accentColor(.accentColor)
            
        }//: VSTACK
    }
}

 // MARK: - PREVIEW

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
