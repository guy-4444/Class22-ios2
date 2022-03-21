import Foundation

class Vacation {
    
    var duration: Int = 0;  // in days
    var location: String = "";
    var attractions: [String] = [];
    let date: Int
    
    func printSelf() {
        print("\n  --Date:\(date)\n\(location), \(duration)  days\n    attractions:\(attractions)")
    }
    
    init() {
        date = Int(Date().timeIntervalSince1970)
    }
    
    init(duration: Int, location: String, attractions: [String]) {
        date = Int(Date().timeIntervalSince1970)
        self.duration = duration
        self.location = location
        self.attractions = attractions
    }
}

class GroupVacation: Vacation {
    
    var participant: [(name: String, age: Int)] = []
    
    override init() {
        super.init()
    }
    
    init(duration: Int, location: String, attractions: [String], participant: [(name: String, age: Int)]) {
        super.init(duration: duration, location: location, attractions: attractions)
        self.participant = participant
    }
    
    override func printSelf() {
        super.printSelf()
        print("    participant:\(participant)")
    }
}
