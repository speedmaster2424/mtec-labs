import UIKit
import Foundation

struct Note: Codable {
    let title: String
    let text: String
    let timestamp: Date
}
/*
let newNote = Note(title: "Grocery run", text: "Pick up the mayo, mustard, lettuce, tomato", timestamp: Date())

let propertyListEncoder = PropertyListEncoder()

if let encodedNote = try? propertyListEncoder.encode(newNote) {
    print(encodedNote)
    
    let propertyListDecoder = PropertyListDecoder()
    if let decodedNote = try? propertyListDecoder.decode(Note.self, from: encodedNote) {
        
        print(decodedNote)
    }
}
*/

let documentsDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!

let archiveURL = documentsDirectory.appendingPathComponent("notes_test").appendingPathExtension("plist")

print(archiveURL)

let propertyListEncoder = PropertyListEncoder()
let encodedNote = try?_property

