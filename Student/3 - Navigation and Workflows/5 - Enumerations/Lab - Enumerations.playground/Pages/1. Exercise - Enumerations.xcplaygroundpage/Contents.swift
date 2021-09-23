/*:
## Exercise - Enumerations
 
 Define a `Suit` enum with four possible cases: `clubs`, `spades`, `diamonds`, and `hearts`.
 */
enum Suits {
    case Spades
    case Hearts
    case Clubs
    case Diamonds
}
enum Values {
    case Ace
    case Two
    case Three
    case Four
    case Five
    case Six
    case Seven
    case Eight
    case Nine
    case Ten
    case Jack
    case Queen
    case King
}
//:  Imagine you are being shown a card trick and have to draw a card and remember the suit. Create a variable instance of `Suit` called `cardInHand` and assign it to the `hearts` case. Print out the instance.
var cardInHand = Suits.Hearts
print(cardInHand)
//:  Now imagine you have to put back the card you drew and draw a different card. Update the variable to be a spade instead of a heart.
cardInHand = Suits.Spades
print(cardInHand)
//:  Imagine you are writing an app that will display a fun fortune (i.e. something like "You will soon find what you seek.") based on cards drawn. Write a function called `getFortune(cardSuit:)` that takes a parameter of type `Suit`. Inside the body of the function, write a switch statement based on the value of `cardSuit`. Print a different fortune for each `Suit` value. Call the function a few times, passing in different values for `cardSuit` each time.
func getFortune(cardSuit: Suits) {
    switch cardSuit {
    case .Spades:
        print("You're fortune indicates great luck today!")
    case .Hearts:
        print("you're fortune indicates you will come across love in your life soon!")
    case .Clubs:
        print("You're fortune indicates you will soon be harmed!")
    case .Diamonds:
        print("You're fortune indicates you will aquire some wealth!")
    }
}
getFortune(cardSuit: .Spades)
getFortune(cardSuit: .Hearts)
getFortune(cardSuit: .Clubs)
getFortune(cardSuit: .Diamonds)
//:  Create a `Card` struct below. It should have two properties, one for `suit` of type `Suit` and another for `value` of type `Int`.
struct Card {
    var suit: Suits
    var value: Values
    
}

//:  How many values can playing cards have? How many values can `Int` be? It would be safer to have an enum for the card's value as well. Inside the struct above, create an enum for `Value`. It should have cases for `ace`, `two`, `three`, `four`, `five`, `six`, `seven`, `eight`, `nine`, `ten`, `jack`, `queen`, `king`. Change the type of `value` from `Int` to `Value`. Initialize two `Card` objects and print a statement for each that details the card's value and suit.
let aceOfSpaces = Card(suit: .Spades, value: .Ace)
let kingOfDiamonds = Card(suit: .Diamonds, value: .King)
print("You're Card is the \(aceOfSpaces.value) Of \(aceOfSpaces.suit)")
/*:
page 1 of 2  |  [Next: App Exercise - Swimming Workouts](@next)
 */
