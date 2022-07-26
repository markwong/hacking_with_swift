import Cocoa
// ===== CLOSURE ======
func greetUser() {
    print("Hi there!");
}
greetUser()
let greetCopy = greetUser
greetCopy()

let sayHello = {
    print("Hi there!")
}
sayHello()

let sayHello2 = { (name: String) -> String in
    "Hi \(name)!"
}
print(sayHello2("Mark"))

let greetCopy2 : () -> Void = greetUser

func getUserData(for id: Int) -> String {
    if id == 1989 {
        return "Taylor Swift"
    } else {
        return "Anonymous"
    }
}
let data: (Int) -> String = getUserData
let user = data(1989)
print(user)

let team = ["Gloria", "Suzanne", "Piper", "Tiffany", "Tasha"]
let sortedTeam = team.sorted()
print(sortedTeam)

func captainFirstSorted(name1: String, name2: String) -> Bool {
    if name1 == "Suzanne" {
        return true
    } else if name2 == "Suzanne" {
        return false
    }
    return name1 < name2
}
//let captainFirstTeam = team.sorted(by: captainFirstSorted)
//print(captainFirstTeam)

let captainFirstTeam = team.sorted(by: { (name1: String, name2: String) -> Bool in
    if name1 == "Suzanne" {
        return true
    } else if name2 == "Suzanne" {
        return false
    }
    return name1 < name2
})
print(captainFirstTeam)


// ==== Closure shorthand syntac
let captainFirstTeam2 = team.sorted(by: { a, b in
    if a == "Suzanne" {
        return true
    } else if b == "Suzanne" {
        return false;
    }
    
    return a < b;
})
print(captainFirstTeam2)

let captainFirstTeam3 = team.sorted { a, b in
    if a == "Suzanne" {
        return true
    } else if b == "Suzanne" {
        return false
    }
    
    return a < b;
}
print(captainFirstTeam3)

let captainFirstTeam4 = team.sorted {
    if $0 == "Suzanne" {
        return true
    } else if $1 == "Suzanne" {
        return false;
    }
    
    return $0 < $1
}
print(captainFirstTeam4)

let reverseTeam = team.sorted {
    return $0 > $1
}
print(reverseTeam)

let reverseTeam2 = team.sorted { $0 > $1 }
print(reverseTeam2)

let tOnly = team.filter { $0.hasPrefix("T") }
print(tOnly)

let uppercaseTeam = team.map { $0.uppercased() }
print(uppercaseTeam)

// ===== How to accept functions as parameters =====
func makeArray(size: Int, using generator: () -> Int) -> [Int] {
    var numbers = [Int]()
    
    for _ in 0..<size {
        let newNumber = generator()
        numbers.append(newNumber)
    }
    
    return numbers
}
let rolls = makeArray(size: 50) {
    Int.random(in: 1...20)
}
print(rolls)

func generateNumber() -> Int {
    Int.random(in: 1...20)
}
let newRolls = makeArray(size: 50, using: generateNumber)
print(newRolls)

func doImportantWork(first: () -> Void, second: () -> Void, third: () -> Void) {
    print("About to start first work")
    first()
    print("About to start second work")
    second()
    print("About to start third work")
    third()
    print("Done!")
}

doImportantWork {
    print("This is the first work")
} second: {
    print("This is the second work")
} third: {
    print("This is the third work")
}
