//
//  TutorialView.swift
//  WordScramble
//
//  Created by Sean Dooley on 06/11/2024.
//

import SwiftUI

struct TutorialView: View {
    let people = ["Finn", "Leia", "Luke", "Rey"]
    
    var body: some View {
        VStack {
//            List(people, id: \.self) {
//                Text($0)
//            }
            
            List {
                Section("Section 1") {
                    Text("Static row 1")
                    Text("Static row 2")
                }
                
                Section("Section 2") {
                    ForEach(0..<5) {
                        Text("Dynamic row \($0)")
                    }
                }
                
                Section("Section 3") {
                    Text("Static row 3")
                    Text("Static row 4")
                }
                
                Section("Section 4") {
                    ForEach(people, id: \.self) {
                        Text($0)
                    }
                }
            }
            .listStyle(.grouped)
            
            if let fileURL = Bundle.main.url(forResource: "some-file", withExtension: "txt") {
                // we found the file in our bundle!
            }
            
            if let fileContents = try? String(contentsOf: fileURL) {
                // we loaded the file into a string!
            }
        }
    }
}

#Preview {
    TutorialView()
}
