//
//  DetailView.swift
//  Notes WatchKit Extension
//
//  Created by Deep Bose on 6/23/21.
//

import SwiftUI

struct DetailView: View {
    
    // MARK: - PROPERTIES
    
    let note: Note
    let count: Int
    let index: Int
    
    @State private var isCreditPresented: Bool = false
    @State private var isSettingsPresented: Bool = false
    
    // MARK: - BODY
    
    var body: some View {
        
        VStack(alignment: .center, spacing: 3)  {
            
            // HEADER
            HeaderView(title: "")
//            HStack {
//                Capsule()
//                .frame(height: 1)
//
//                Image(systemName: "note.text")
//
//                Capsule()
//                .frame(height: 1)
//            }//: HSTACK
//            .foregroundColor(.accentColor)
            
            // CONTENT
            Spacer()
            
            ScrollView{
                Text(note.text)
                    .font(.title3)
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
            }//: SCROLL
            
            Spacer()
            
            // FOOTER
            HStack(alignment: .center){
                Image(systemName: "gear")
                  .imageScale(.large)
                    .onTapGesture {
                        isSettingsPresented.toggle()
                    }
                    .sheet(isPresented: $isSettingsPresented, content: {
                        SettingsView()
                    })
                
                Spacer()
                
                Text("\(count) / \(index + 1)")
                
                Spacer()
                
                Image(systemName: "info.circle")
                  .imageScale(.large)
                    .onTapGesture {
                        isCreditPresented.toggle()
                    }
                    .sheet(isPresented: $isCreditPresented, content: {
                        CreditsView()
                    })
            }//: HSTACK
            .foregroundColor(.secondary)
            
        }//: VSTACK
        .padding(3)
    }
}

// MARK: - PREVIEW

struct DetailView_Previews: PreviewProvider {
    
    static var sampleData: Note = Note(id: UUID(), text: "Hello")
    static var previews: some View {
        DetailView(note: sampleData, count: 5, index: 1)
    }
}
