import Cocoa

// Find all the numbers in existence which are factorable by array a, but are also factors of all the elements in array b!

let a = [2, 4]
let b = [16, 32, 96]

func getTotalX(a: [Int], b: [Int]) -> Int {
    
    let smallestB: Int = b.min() ?? 0
    let biggestA: Int = a.max() ?? 9999
    var solutionArray: [Int] = []

    if biggestA > smallestB {
        print("interesting input!")
        return 0
    }

    for testNumber in biggestA...smallestB {
        print("testNumber = \(testNumber)")
        var factorWorks: Bool = true
        var productWorks: Bool = true

        // Figure out if all the factors in a go into testNumber
        for potentialFactor in a {
            if testNumber % potentialFactor != 0 {
                factorWorks = false
            }
        }
        print("tested factors")
        // figure out if all the products in b are factored by testNumber
        for potentialProduct in b {
            if potentialProduct % testNumber != 0 {
                productWorks = false
            }
        }
        print("tested products")

        // create a solution array containing any testNumbers that works
        if (productWorks == true) && (factorWorks == true) {
            solutionArray.append(testNumber)
        }
    }
    print(solutionArray)
    return solutionArray.count
}

print(getTotalX(a: a, b: b))
