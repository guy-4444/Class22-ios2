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




