import Foundation

class Closures {
    
    
    init() {
        
    }
    
    func start() {
        var result = sub(n1: 3, n2: 4)
        
        
        result = calc(n1: 4, n2: 2, action: sub(n1:n2:))
        
        
        result = calc(n1: 4, n2: 2, action: {(n1: Int, n2: Int) -> Int in
            return n1 + n2
        })
        
        // Swift knows the type of variables you send to
        result = calc(n1: 4, n2: 2, action: {(n1, n2) -> Int in
            return n1 + n2
        })
        
        // Swift knows the type of variable he is supposed to return
        result = calc(n1: 4, n2: 2, action: {(n1, n2) in
            return n1 + n2
        })
        
        // Swift knows he has to return something
        result = calc(n1: 4, n2: 2, action: {(n1, n2) in
            n1 + n2
        })
        
        // in one line
        result = calc(n1: 4, n2: 2, action: {(n1, n2) in n1 + n2 })
        
        result = calc(n1: 4, n2: 2, action: { $0 + $1 })
        print(result)
        print("- - - -")

        var arr = [Int](repeating: 0, count: 11)
        var arr2 = Array(repeating: 0, count: 11)
        var arr3 = Array(repeating: 0, count: 11)

        print(arr)
        print(arr2)
        
        for i in 0...arr.count-1 {
            arr[i] = i
        }
        
        for i in 0..<arr.count {
            arr[i] = i
            arr2[i] = i
        }
        
        for n in arr {
            print(n)
        }
        print(arr)

        for i in 0..<arr.count {
            arr[i] *= arr[i]
        }
        print(arr)

        
        
        print("Power: \(powerArray(arr: arr2))")
        print("Arr2: \(arr2)")
        
        let powArrResult = arr2.map({(n: Int) -> Int in
            return n*n
        })
        
        let powArrResult2 = arr2.map({ $0*$0 })
        
        print("powArrResult: \(powArrResult)")
        print("powArrResult2: \(powArrResult2)")

        arr3 = arr3.map({ $0*$0 })
        print("arr3: \(arr3)")
        
        
        var arr4 = Array(1...5)
        arr4 = arr4.map({ $0*$0 })
        print("arr4: \(arr4)")
        
        var arr5 = (Array(0...10)).map({$0*$0})
        print("arr5: \(arr5)")

        
        var arr6 = [Int](0...10)
        print("arr6: \(arr6)")

        
        var arr7 = Array(1...5)
        arr7 = arr7.map{$0*$0}
        print("arr7: \(arr7)")
        
        
        var arr81 = (0...10).map{ Float($0) * 1.5 }
        print("arr81: \(arr81)")
        var arr82 = stride(from: 0, through: 10, by: 1).map({$0*$0})
        print("arr82: \(arr82)")

        
        var arr91 = Array(stride(from: 0.0, to: 2, by: 0.1))
        var arr92 = Array(stride(from: 0.0, through: 2, by: 0.1))
        print("arr91: \(arr91)")
        print("arr92: \(arr92)")
        


        print("\n\n\n\n\n\n\n")
    }
    
    
    func powerArray(arr:[Int]) -> [Int] {
        var powArr = Array(repeating: 0, count: arr.count)
        for i in 0..<arr.count {
            powArr[i] = pow(n: arr[i])
        }
        return powArr
    }
    
    func pow(n: Int) -> Int {
        return n*n
    }
    
    
    
    func calc(n1: Int, n2: Int, action: (Int, Int) -> Int) -> Int {
        return action(n1, n2)
    }
    
    func sub(n1: Int, n2: Int) -> Int {
        return n1 - n2
    }
    
    func add(n1: Int, n2: Int) -> Int {
        return n1 + n2
    }
      
}
