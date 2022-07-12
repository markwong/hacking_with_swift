import Cocoa

let filename = "paris.jpg"
print(filename.hasSuffix(".jpg"))

let number = 120
print(number.isMultiple(of: 3))

let goodDogs = true
var gameOver = false
gameOver.toggle()
print(gameOver)

let isMultiple = 120.isMultiple(of: 3)

var isAuthenticated = false
isAuthenticated = !isAuthenticated
print(isAuthenticated)
isAuthenticated = !isAuthenticated
print(isAuthenticated)

let firstPart = "Hello, "
let secondPart = "world!"
let greeting = firstPart + secondPart

let people = "Haters"
let action = "hate"
let lyrics = people + " gonna " + action

let luggageCode = "1" + "2" + "3" + "4" + "5"

let name = "Taylor"
let age = 26
let message = "Hello, my name is \(name) and I'm \(age) years old."
print(message)

let number1 = 11
let missionMessage = "Apollo " + String(number1) + " landed on the moon."
let missionMessage1 = "Apollo \(number1) landed on the moon."

print ("5 x 5 is \(5*5)")




