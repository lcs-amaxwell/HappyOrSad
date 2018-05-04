
import Foundation

//Loop forever until valid input is given

var validInput = ""

while 1==1 {

// Unwrap the given input form usem make sure it is not nil
guard let givenInput = readLine() else {
    //Tell the user there was a problem
    print("Please enter a string with at least 1 character and no more then 255 characters.")
    
    // go to the next interation of the loop
    continue
}

// is the string the correct length?
if givenInput.count < 1 || givenInput.count > 255 {
    
}
    
    //If we got this far, input is guaranteed to be valid
    validInput = givenInput
    
break // Very Important - this stops the while loop
}

// Print out the input provided
//print("You said:")
//print(rawInput) // Optional String
//print(input) //Non-Optional


var happyCount = 0
var sadCount = 0
// process- inspect each charachter
for individualCharacter in validInput {
    //Debug
    print(individualCharacter)
    
    // Catogroize each character
    
    switch individualCharacter {
    case "😃", "🙂", "☺️", "😊" :
        happyCount += 1
    case "😕", "😕", "😔", "🙁":
        sadCount += 1
    default:
        
        break //nothing
    }
    
 
//Output
// Tell the user "happy", "sad" or "unsure" based on counts above

if happyCount > sadCount {
    print("happy")
} else if sadCount > happyCount {
    print("sad")
} else if happyCount == 0 && sadCount == 0 {
    print ("none")
    
} else {
    print("unsure")
}

}
