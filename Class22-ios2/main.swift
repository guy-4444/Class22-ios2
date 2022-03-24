import Foundation

//var v1 = Vacation(1, "Rome", [])
var v1 = Vacation()
v1.duration = 7
v1.location = "Rome"
v1.attractions = ["Colosseum", "Restaurants", "Piazza De la harta"]

var v2 = Vacation()
v2.duration = 5
v2.location = "Paris"
v2.attractions = ["Aiffel Tower", "Louver"]





var v3 = GroupVacation()
v3.duration = 6
v3.location = "Georgia"
v3.attractions = ["Haba House", "Ski Resort", "Jeep Traveling"]
v3.participant = [("Avi", 34), ("Eli", 45), ("Effi", 56)]


var v4 = Vacation(duration: 3, location: "New York", attractions: ["Central park", "TC Memorial"])

//v1.printSelf()
//v2.printSelf()
//v3.printSelf()
//v4.printSelf()

var v5 = GroupVacation()
v5.participant = [("AAA", 34), ("BBB", 45), ("CCC", 56)]
v5.guides = ["DDD" : 11, "EEE" : 22, "FFF" : 33]

v5.participant.insert(("Guy", 50), at: 1)

for p in v5.participant {
    if p.name == "Guy" {
        //print(p.age)
    }
}

v5.guides["GUY"] = 44


var cars: [String : String] = ["Avi" : "Mitsubishi", "Eli" : "BMW"]
cars["Roman"] = "Lamborghini"

//print(cars)
//print(   (cars["Chen"] ?? "Taxi").last   )


print(" - A - - - - ")
if let car = cars["Chen"] {
    print(car.first)

}


if (cars["Chen"] != nil) {
    var cer: String! = cars["Chen"]
    print(cer.first)
}


print(" - B - - - - ")







