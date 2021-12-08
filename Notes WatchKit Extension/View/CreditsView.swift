//
//  CreditsView.swift
//  Notes WatchKit Extension
//
//  Created by Deep Bose on 6/26/21.
//

import SwiftUI

struct CreditsView: View {
    
    // MARK: - PROPERTIES
    
    @State private var randomNumber: Int = Int.random(in: 0..<4)
    
    private var randomImage: String {
        return "developer-no\(randomNumber)"
    }
    
    // MARK: - BODY
    var body: some View {
        
        VStack(spacing: 3) {
            
            // Porfile Image
            Image(randomImage)
                .resizable()
                .scaledToFit()
                .layoutPriority(1)
            // Header
            HeaderView(title: "Credits")
            
            // Content
            Text("Deep Bose")
                .foregroundColor(.primary)
                .fontWeight(.bold)
            
            Text("iOS Developer")
                .font(.footnote)
                .foregroundColor(.secondary)
                .fontWeight(.light)
            
        }//: VSTACK
    }
}


 // MARK: - PREVIEW


struct CreditsView_Previews: PreviewProvider {
    static var previews: some View {
        CreditsView()
    }
}
