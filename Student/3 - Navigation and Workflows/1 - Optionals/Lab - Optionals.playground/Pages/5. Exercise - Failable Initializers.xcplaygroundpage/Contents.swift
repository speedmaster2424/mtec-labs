/*:
## Exercise - Failable Initializers

 Create a `Computer` struct with two properties, `ram` and `yearManufactured`, where both parameters are of type `Int`. Create a failable initializer that will only create an instance of `Computer` if `ram` is greater than 0, and if `yearManufactured` is greater than 1970, and less than 2020.
 */
struct Computer {
    let yearManufactured: Int
    let ram: Int
    init? (yearManufactured: Int, ram: Int) {
        if  yearManufactured < 1970 && yearManufactured > 2021 {
            return nil
        } else {
            self.yearManufactured = yearManufactured
            self.ram = ram
        }
    }
}
//:  Create two instances of `Computer?` using the failable initializer. One instance should use values that will have a value within the optional, and the other should result in `nil`. Use if-let syntax to unwrap each of the `Computer?` objects and print the `ram` and `yearManufactured` if the optional contains a value.
let computer1 = Computer(yearManufactured: 2022, ram: 3)
let computer2 = Computer(yearManufactured: 2021, ram: 9000)
if let computer1unwrap = computer1 {
    print(computer1unwrap)
}
if let computer2unwrap = computer2 {
    print(computer2unwrap)
}
/*:
[Previous](@previous)  |  page 5 of 6  |  [Next: App Exercise - Workout or Nil](@next)
 */
