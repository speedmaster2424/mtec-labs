/*:
## Exercise - Create Functions

 Write a function called `introduceMyself` that prints a brief introduction of yourself. Call the function and observe the printout.
 */


//:  Write a function called `magicEightBall` that generates a random number and then uses either a switch statement or if-else-if statements to print different responses based on the random number generated. `let randomNum = Int.random(in: 0...4)` will generate a random number from 0 to 4, after which you can print different phrases corresponding to the number generated. Call the function multiple times and observe the different printouts.
import Foundation
let randomNum = Int.random(in: 0...4)
func eightball() {
    switch randomNum {
    case 1:
        print("Yes")
    case 2:
        print("NO")
    case 3:
        print("Ask again later")
    case 4:
        print("Make your own path")
    default:
        print("You're eight ball has rejected god and decided to destroy the universe. my how you have screwed up")
    }
    
}
eightball()
/*:
page 1 of 6  |  [Next: App Exercise - A Functioning App](@next)
 */
