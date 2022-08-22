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

//Checkpoint 1
//celsuis 应该用Double 后面+".0"
let celsuis = 10.0
let fahrenheit = celsuis * 9 / 5 + 32
print("Celsuis: \(celsuis)°C; Fahrenheit: \(fahrenheit)°F")
