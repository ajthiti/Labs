/*:
## Exercise - Type Casting and Inspection

 Create a collection of type [Any], including a few doubles, integers, strings, and booleans within the collection. Print the contents of the collection.
 */
let anything: [Any] = [4.2, 91, "one", "JJ", 1.1, true, true, false, 40]
print(anything)

//:  Loop through the collection. For each integer, print "The integer has a value of ", followed by the integer value. Repeat the steps for doubles, strings and booleans.
for item in anything {
    if let theItem = item as? Bool {
        print("The boolean has a value of \(theItem)")
    } else if let theItem = item as? Double {
        print("The double has a value of \(theItem)")
    } else if let theItem = item as? Int {
        print("The integer has a value of \(theItem)")
    } else if item is String {
        print("The string has a value of \(item)")
    }
}

//:  Create a [String : Any] dictionary, where the values are a mixture of doubles, integers, strings, and booleans. Print the key/value pairs within the collection
let mything: [String: Any] = ["First": true, "Second": false, "Third": "90", "Fourth": 12, "Fifth": 1.1]
print(mything)

//:  Create a variable `total` of type `Double` set to 0. Then loop through the dictionary, and add the value of each integer and double to your variable's value. For each string value, add 1 to the total. For each boolean, add 2 to the total if the boolean is `true`, or subtract 3 if it's `false`. Print the value of `total`.
var total: Double = 0

for (_, value) in mything {
    if let theValue = value as? Int {
        total += Double(theValue)
        
    } else if let theValue = value as? Double {
        total += theValue
        
    } else if let _ = value as? String {
        total += 1
        
    } else if let theValue = value as? Bool {
        if theValue {
            total += 2
        } else {
            total -= 3
        }
    }
}

print(total)

//:  Create a variable `total2` of type `Double` set to 0. Loop through the collection again, adding up all the integers and doubles. For each string that you come across during the loop, attempt to convert the string into a number, and add that value to the total. Ignore booleans. Print the total.
var total2: Double = 0

for (_, value) in mything {
    if let theValue = value as? Int {
        total2 += Double(theValue)
    } else if let theValue = value as? Double {
        total2 += theValue
    } else if let theValue = value as? String,
        let numValue = Double(theValue) {
        total2 += numValue
    } else if value is Bool {
        continue
    }
}

print(total2)

/*:
page 1 of 2  |  [Next: App Exercise - Workout Types](@next)
 */
