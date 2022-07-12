import Cocoa

enum SquareRootError : Error {
    case OutOfBound
    case NoRoot
}
func mysqrt(_ n : Int) throws -> Int {
    if (n < 1 || n > 10_000) { throw SquareRootError.OutOfBound }
    for i in 1...100 {
        if (i*i) == n {
            return i
        }
    }
    throw SquareRootError.NoRoot
}

let number = Int.random(in: 1...10_000)
print("Find the square root of \(number)")
do {
    print("Square root of \(number) is \(try mysqrt(number))")
} catch SquareRootError.OutOfBound {
    print("The number is out of bound.")
} catch SquareRootError.NoRoot {
    print("The number has no root.")
}
