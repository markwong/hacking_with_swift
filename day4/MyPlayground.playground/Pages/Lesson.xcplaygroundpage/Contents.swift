import Cocoa

// ===== Array =====

var beatles = ["John", "Paul", "George", "Ringo"]
beatles.append("Adrian")
beatles.append("Allen")
beatles.append("Adrian")
beatles.append("Novall")
beatles.append("Vivian")

var scores = Array<Int>()
scores.append(100)
scores.append(80)
scores.append(85)
print(scores[1])

var albums = [String]()
albums.append("Folklore")
albums.append("Fearless")
albums.append("Red")
print(albums.count)

var characters = ["Lana", "Pam", "Ray", "Sterling"]
print(characters.count)
characters.remove(at: 2)
print(characters.count)

characters.removeAll()
print(characters.count)

let bondMovies = ["Casino Royale", "Spectre", "No Time to Die"]
print(bondMovies.contains("Frozen"))

let cities = ["London", "Tokyo", "Rome", "Budapest"]
print(cities.sorted())

let presidents = ["Bush", "Obama", "Trump", "Biden"]
let reversedPresidents = presidents.reversed()
print(reversedPresidents)


let numbers = [4, 8, 15, 16, 23, 42]

var temperatures = [25.3, 28.2, 26.4]

print(beatles[0])
print(numbers[1])
print(temperatures[2])

// ===== Dictionary =====
let employee2 = [
    "name"      : "Taylor Swift",
    "job"       : "Singer",
    "location"  : "Nashville"
]

print(employee2["name", default: "Unknown"])
print(employee2["job", default: "Unknown"])
print(employee2["location", default: "Unknown"])

let hasGraduated = [
    "Eric": false,
    "Maeve": true,
    "Otis": false
]

let olympics = [
    2012: "London",
    2016: "Rio de Janeiro",
    2021: "Tokyo"
]

print(olympics[2012, default: "Unknown"])

var heights = [String: Int]()
heights["Yao Ming"] = 229
heights["Shaquille O'Neal"] = 216
heights["LeBron James"] = 206

var archEnemies = [String: String]()
archEnemies["Batman"] = "The Joker"
archEnemies["Superman"] = "Lex Luthor"
archEnemies["Batman"] = "Penguin"


// ===== SET =====
let actors = Set([
    "Denzel Washington",
    "Tom Cruise",
    "Nicolas Cage",
    "Samuel L Jackson"
])

print(actors)

var actors2 = Set<String>()
actors2.insert("Denzel Washington")
actors2.insert("Tom Cruise")
actors2.insert("Nicolas Cage")
actors2.insert("Samuel L Jackson")
print(actors2)
print(actors2.sorted())


// ===== ENUM =====
enum Weekday {
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
}

enum Weekend {
    case saturday
    , sunday
}

var day = Weekday.monday
day = Weekday.tuesday
day = .wednesday
day = .friday


// ===== TYPE ANNOTATION =====
let surname : String = "Lasso"
var score : Double = 0

let playerName : String = "Roy"
let luckyNumber : Int = 13
let pi : Double = 3.141
let isAuthenticated : Bool = true

var albums2 : [String] = ["Red", "Fearless"]
var user: [String:String] = ["id" : "@twostraws"]
var books : Set<String> = [
    "The Bluest Eye",
    "Foundation",
    "Girl, Woman, Other"
]

var soda : [String] = ["Coke", "Pepsi", "Irn-Bru"]
var teams : [String] = [String]()
var cities2 : [String] = []
var clues = [String]()

enum UIStyle {
    case light, dark, system
}

var style : UIStyle = .dark
var style2 = UIStyle.system

let username : String
// lots of complex logic
username = "@twostraws"
// lots more complex logic
print(username)










