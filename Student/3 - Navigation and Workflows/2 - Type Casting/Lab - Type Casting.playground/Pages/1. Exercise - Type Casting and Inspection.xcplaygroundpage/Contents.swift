/*:
## Exercise - Type Casting and Inspection

 Create a collection of type [Any], including a few doubles, integers, strings, and booleans within the collection. Print the contents of the collection.
 */
var johm: [Any] = [true, false, 2.0, 4.0, 5, 10, "jame", "jamu"]

//:  Loop through the collection. For each integer, print "The integer has a value of ", followed by the integer value. Repeat the steps for doubles, strings and booleans.

for john in johm {
    if let int = john as? Int {
        print("The Integer has a value of \(int)")
    } else if let double = john as? Double {
        print("The Double has a value of \(double)")
    } else if let string = john as? String {
        print("The string has a value of \(string)")
    } else if let boolean = john as? Bool {
        print("The boolean has a value of \(boolean)")
    }
    
}

//:  Create a [String : Any] dictionary, where the values are a mixture of doubles, integers, strings, and booleans. Print the key/value pairs within the collection
var jam: [String: Any] = ["jone": 2.0, "joe": 3, "johe": "23", "come": true]
for james in jam {
    print(james)
}
//:  Create a variable `total` of type `Double` set to 0. Then loop through the dictionary, and add the value of each integer and double to your variable's value. For each string value, add 1 to the total. For each boolean, add 2 to the total if the boolean is `true`, or subtract 3 if it's `false`. Print the value of `total`.
var total: Double = 0.0
for key in jam.keys {
    total += 1
}
for value in jam.values {
    if let string = value as? String {
        total += 1
    } else if let double = value as? Double {
        total += double
    } else if let interger = value as? Int {
        total += Double(interger)
    } else if let boolValue = value as? Bool {
        if boolValue == true {
            total += 2
        } else { total -= 3 }
    }
}
print(total)
//:  Create a variable `total2` of type `Double` set to 0. Loop through the collection again, adding up all the integers and doubles. For each string that you come across during the loop, attempt to convert the string into a number, and add that value to the total. Ignore booleans. Print the total.
var total2: Double = 0.0
for value in jam.values {
    if let interger = value as? Int {
        total2 += Double(interger)
    } else if let double = value as? Double {
        total2 += double
    }
    guard let string = value as? String, let intString = Int(string) else { continue }
    total2 += Double(intString)
}
/*:
page 1 of 2  |  [Next: App Exercise - Workout Types](@next)
 */
