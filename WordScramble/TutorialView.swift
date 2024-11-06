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
                
                if let fileContents = try? String(contentsOf: fileURL) {
                    // we loaded the file into a string!
                }
            }
            
            let input = "a b c"
            let letters = input.components(separatedBy: " ")
            
            let inputNewLine = """
                        a
                        b
                        c
                        """
            let lettersNewLine = input.components(separatedBy: "\n")
            
            let letter = letters.randomElement()
            let trimmed = letter?.trimmingCharacters(in: .whitespacesAndNewlines)
            
            // Checking a string for misspelled words
            let word = "swift"
            let checker = UITextChecker()
            
            // ask Swift to create an Objective-C string range using the entire length of all our characters
            let range = NSRange(location: 0, length: word.utf16.count)
            
            // ask our text checker to report where it found any misspellings in our word
            let misspelledRange = checker.rangeOfMisspelledWord(in: word, range: range, startingAt: 0, wrap: false, language: "en")
            
            // check our spelling result to see whether there was a mistake or not
            let allGood = misspelledRange.location == NSNotFound
        }
    }
}

#Preview {
    TutorialView()
}
