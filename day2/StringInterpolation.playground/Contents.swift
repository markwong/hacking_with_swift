import UIKit

extension String.StringInterpolation {
    mutating func appendInterpolation(format value : Int, using style : NumberFormatter.Style) {
        let formatter = NumberFormatter()
        formatter.numberStyle = style
        
        if let result = formatter.string(from: value as NSNumber) {
            appendLiteral(result)
        }
    }
    
    mutating func appendInterpolation(_ value : Date) {
        let formatter = DateFormatter()
        formatter.dateStyle = .full
        
        let dateString = formatter.string(from: value)
        appendLiteral(dateString)
    }
    
    mutating func appendInterpolation(twitter: String) {
        appendLiteral("<a href='https://twitter.com/\(twitter)\'>@\(twitter)</a>")
    }
    
    mutating func appendInterpolation(_ values : [String], empty defaultValue: @autoclosure () -> String) {
        if values.count == 0 {
            appendLiteral(defaultValue())
        } else {
            appendLiteral(values.joined(separator: ", "))
        }
    }
    
    mutating func appendInterpolation(if condition: @autoclosure () -> Bool, _ literal: StringLiteralType) {
        guard condition() else { return }
        appendLiteral(literal)
    }
}

extension Array where Element == String {
    func formatted(empty defaultValue: @autoclosure () -> String) -> String {
        if count == 0 {
            return defaultValue()
        } else {
            return self.joined(separator: ", ")
        }
    }
}

let age = 38
print("Hi, I'm \(format: age, using: .spellOut).")
print("Today's date is \(Date())")
print("You should follow me on Twitter: \(twitter: "markwong").")

let names = ["Malcolm", "Jayne", "Kaylee"]
print("Crew: \(names, empty: "No one")")
print("Crew: \(names.formatted(empty: "No one")).")

let doesSwiftRock = true
print("Swift rocks: \(if: doesSwiftRock, "(*)")")
print("Swift rocks: \(doesSwiftRock ? "(*)" : "")")

struct Person : Encodable {
    var type    : String
    var action  : String
}

extension String.StringInterpolation {
    mutating func appendInterpolation(_ person : Person) {
        appendLiteral("I'm a \(person.type) and I'm gonna \(person.action).")
    }
    
    mutating func appendInterpolation(_ person : Person, count : Int) {
        let action = String(repeating: "\(person.action) ", count: count)
        appendLiteral("\n\(person.type.capitalized)s gonna \(action)")
    }
    
    mutating func appendInterpolation<T: Encodable>(debug value: T) throws {
        let encoder = JSONEncoder()
        encoder.outputFormatting = .prettyPrinted
        
        let result = try encoder.encode(value)
        let str = String(decoding: result, as: UTF8.self)
        appendLiteral(str)
    }
}

let hater = Person(type: "hater", action: "hate")
let player = Person(type: "player", action: "play")
let heartBreaker = Person(type: "heart-breaker", action: "break")
let faker = Person(type: "faker", action: "fake")
print("Let's sing: \(player, count: 5) \(hater, count: 5) \(heartBreaker, count: 5) \(faker, count: 5)")

print(try "Here's some data: \(debug: faker).")

print(hater)
print("Status check: \(hater)")


