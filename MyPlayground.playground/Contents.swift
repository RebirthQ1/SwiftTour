import Cocoa

var greeting = "Hello, playground"

let movie = """
A day in
the life of an
Apple engineer
"""
print(movie.hasSuffix("engineer"))

let reallyBig = 100_000_000

var gameOver = false
gameOver.toggle()
print(gameOver)

//浪费资源，应该用string interpolation \()
let luggageCode = "1" + "2" + "3" + "4" + "5"
let number = 10
//let missionMessage = "Apllo" + String(number) + " landed on the moon."
let missionMessage = "Apllo \(number + 10) landed on the moon."

//: Checkpoint 1
//celsuis 应该用Double 后面+".0"
let celsuis = 10.0
let fahrenheit = celsuis * 9 / 5 + 32
print("Celsuis: \(celsuis)°C; Fahrenheit: \(fahrenheit)°F")

var scores = Array<Int>()
scores.append(100)
scores.append(80)
scores.append(85)
print(scores[1])

let presidents = ["Bush","Obama","Trump","Biden"]
let reversedPresidents = presidents.reversed()
print(reversedPresidents)
print(presidents.contains("Bush"))

var employee2 = [
    "name": "Taylor Swift",
    "job": "Singer",
    "location": "Nashville"
]
print(employee2["name", default: "Unknown"])
print(employee2["job", default: "Unknown"])
print(employee2["location", default: "Unknown"])
print(employee2.count)
print(employee2.removeAll())
print(employee2)

var heights = [String: Int]()
heights["YaoMing"] = 229
heights["Shaquille O'Neal"] = 216
heights["LeBron James"] = 206
print(heights)

let people = Set(["Denzel Washington", "Tom Cruise", "Nicolas Cage", "Samuel L Jackson"])
print(people)

let capitals = ["England": "London", "Wales": "Cardiff"]
let scotlandCapital = capitals["Scotland"]

//:Checkpoint 2
var checkpointArray = ["a","a","b","c"]
print("number of items: \(checkpointArray.count)")
print("number of unique items: \(Set(checkpointArray).count)")

let speed = 88
let percentage = 84
let age = 18

if speed >= 88 {
    print("Where we're going we don't need roads.")
}

if percentage < 85 {
    print("Sorry, you failed the test.")
}

if age >= 18 {
    print("You're eligible to vote")
}

let ourName = "Dave Lister"
let friendName = "Arnold Rimmer"

if ourName < friendName {
    print("It's \(ourName) vs \(friendName)")
}

if ourName > friendName {
    print("It's \(friendName) vs \(ourName)")
}

// Make an array of 3 numbers
var numbers = [1, 2, 3]

// Add a 4th
numbers.append(4)

// If we have over 3 items
if numbers.count > 3 {
    // Remove the oldest number
    numbers.remove(at: 0)
}

// Display the result
print(numbers)

enum Weather {
    case sun, rain, wind, snow, unknown
}
let forecast = Weather.sun
switch forecast {
case .sun:
    print("It should be a nice day.")
case .rain:
    print("Pack an umbrella.")
case .wind:
    print("Wear something warm")
case .snow:
    print("School is cancelled.")
case .unknown:
    print("Our forecast generator is broken!")
}

let a = 1
switch a {
case 1:
    print("1")
case 2:
    print("2")
default:
    print("default")
}

let day = 5
print("My true love gave to me…")

switch day {
case 5:
    print("5 golden rings")
    fallthrough
case 4:
    print("4 calling birds")
    fallthrough
case 3:
    print("3 French hens")
    fallthrough
case 2:
    print("2 turtle doves")
    fallthrough
default:
    print("A partridge in a pear tree")
}

let platforms = ["iOS", "macOS", "tvOS", "watchOS"]

for os in platforms {
    print("Swift works great on \(os).")
}

for i in 1...12 {
    print("5 x \(i) is \(5 * i)")
}

var lyric = "Haters gonna"

for _ in 1...5 {
    lyric += " hate"
}

print(lyric)

// create an integer to store our roll
var roll = 0

// carry on looping until we reach 20
while roll != 20 {
    // roll a new dice and print what it was
    roll = Int.random(in: 1...20)
    print("I rolled a \(roll)")
}

// if we're here it means the loop ended – we got a 20!
print("Critical hit!")

let filenames = ["me.jpg", "work.txt", "sophie.jpg", "logo.psd"]

for filename in filenames {
    if filename.hasSuffix(".jpg") == false {
        continue
    }
    
    print("Found picture: \(filename)")
}

let number1 = 4
let number2 = 14
var multiples = [Int]()

for i in 1...100_000 {
    if i.isMultiple(of: number1) && i.isMultiple(of: number2) {
        multiples.append(i)
        
        if multiples.count == 10 {
            break
        }
    }
}

print(multiples)

//: Checkpoint 3
for i in 1...100 {
    if i.isMultiple(of: 3) {
        print("Fizz")
    } else if i.isMultiple(of: 5) {
        print("Buzz")
    } else if i.isMultiple(of: 5) && i.isMultiple(of: 3) {
        print("FizzBuzz")
    } else {
        print("i is \(i)")
    }
}


let root = sqrt(169)
print(root)


func checkCommenLetters(first: String, second: String) -> Bool{
    //    if(first.sorted() == second.sorted()){
    //        return true
    //    } else {
    //        return false
    //    }
    /*return*/ first.sorted() == second.sorted()
}
print(checkCommenLetters(first: "test", second: "sett"))

//Error handling
enum PasswordError: Error {
    case short, obvious
}

func checkPassword(_ password: String) throws -> String {
    if password.count < 5 {
        throw PasswordError.short
    }

    if password == "12345" {
        throw PasswordError.obvious
    }

    if password.count < 8 {
        return "OK"
    } else if password.count < 10 {
        return "Good"
    } else {
        return "Excellent"
    }
}
let string = "12345"

do {
    let result = try checkPassword(string)
    print("Password rating: \(result)")
} catch PasswordError.short {
    print("Please use a longer password.")
} catch PasswordError.obvious {
    print("I have the same combination on my luggage!")
    print(PasswordError.obvious.localizedDescription)
} catch {
    print("There was an error.")
}

//:Checkpoint 4
enum errorCase: Error{
    case outOfBounds, noResult
}

func getSquareRoot(_ number: Int)throws -> Int {
    if(number < 1 || number > 10000){
        throw errorCase.outOfBounds
    }
    var result = false
    for i in 1...100/*10000*/{
        if (i * i == number){
            result = true
            return i
        }
    }
    if !result {
        throw errorCase.noResult
    }
}

do {
    let result = try getSquareRoot(8)
    print("Result is \(result)")
} catch errorCase.outOfBounds{
    print("Out of bounds")
} catch errorCase.noResult{
    print("No result")
}


func testFunction(number: Int) -> Int{
    number
}
testFunction(number: 1)

//struct Employee {
//    let name: String
//    var vacationRemaining: Int
//
//    mutating func takeVacation(days: Int) {
//        if vacationRemaining > days {
//            vacationRemaining -= days
//            print("I'm going on vacation!")
//            print("Days remaining: \(vacationRemaining)")
//        } else {
//            print("Oops! There aren't enough days remaining.")
//        }
//    }
//}
//var archer = Employee(name: "Sterling Archer", vacationRemaining: 14)
//archer.takeVacation(days: 5)
//print(archer.vacationRemaining)

struct Employee {
    let name: String
    var vacationAllocated = 14
    var vacationTaken = 0

    var vacationRemaining: Int {
        get {
            vacationAllocated - vacationTaken
        }

        set {
            vacationAllocated = vacationTaken + newValue
        }
    }
}
var archer = Employee(name: "Sterling Archer", vacationAllocated: 14)
archer.vacationTaken += 4
archer.vacationRemaining = 5
print(archer.vacationAllocated)
