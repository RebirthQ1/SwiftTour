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
