import Cocoa

// == how to reuse code with function ====

func showWelcome() {
    print("Welcome to my app!")
    print("By default This prints out a conversion")
    print("chart from centimeters to inches, but you")
    print("can also set a custom range if you want.")
}
showWelcome()

let number = 139
if number.isMultiple(of: 2) {
    print("Even")
} else {
    print("Odd")
}

let roll = Int.random(in: 1...20)

func printTimesTables(number: Int, end: Int) {
    for i in 1...end {
        print("\(i) * \(number) is \(i * number)")
    }
}
printTimesTables(number: 5, end: 20)


// === Return values from function ===
let root = sqrt(169)
print(root)

func rollDice() -> Int {
    return Int.random(in: 1...6)
}
let result = rollDice()
print(result)

func sameString(_ s1 : String, _ s2 : String) -> Bool {
    s1.uppercased().sorted() == s2.uppercased().sorted()
}
print(sameString("AbC", "Bca"))

func pythagoras(a : Double, b : Double) -> Double {
    sqrt(a*a + b*b);
}
print("c is \(pythagoras(a: 3, b: 4))")


// === Return multiple values from functions ===
func isUppercase(string: String) -> Bool {
    string == string.uppercased()
}
print(isUppercase(string: "Hello"))

func getUser1() -> [String] {
    ["Taylor", "Swift"]
}
let user1 = getUser1()
print("Name: \(user1[0]) \(user1[1])")

func getUser2() -> [String: String] {
    ["firstName": "Taylor", "lastName": "Swift"]
}
let user2 = getUser2()
print("Name: \(user2["firstName", default: "?"]) \(user2["lastName", default: "?"])")

func getUser3() -> (firstName: String, lastName: String) {
    //(firstName: "Taylor", lastName: "Swift")
    ("Taylor", "Swift")
}
let user3 = getUser3()
print("Name: \(user3.firstName) \(user3.lastName)")

let (firstName, lastName) = user3
print("Name: \(firstName) \(lastName)")
 
func getUser4() -> (String, String) {
    ("Taylor", "Swift")
}
let user4 = getUser4()
print("Name: \(user4.0) \(user4.1)")


// === customize parameter labels ===
func rollDice(sides: Int, count: Int) -> [Int] {
    var rolls = [Int]()
    
    for _ in 1...count {
        let roll = Int.random(in: 1...sides)
        rolls.append(roll)
    }
    
    return rolls
}
let rolls = rollDice(sides: 6, count: 4)
print(rolls)

func hireEmployee(name: String) {}
func hireEmployee(title: String) {}
func hireEmployee(location: String) {}

let lyric = "I see a red door and I want it painted black."
print(lyric.hasPrefix("I see"))

func isUppercase(_ string: String) -> Bool {
    string == string.uppercased()
}
let string = "HELLO, WORLD"
let result2 = isUppercase(string)

func printTimesTable(for number: Int) { // for -> external name; number -> internal name
    for i in 1...12 {
        print("\(i) x \(number) is \(i * number)")
    }
}
printTimesTable(for: 5)
