import Cocoa

let row1 = [4, 8, 2]
let row2 = [4, 5, 7]
let row3 = [6, 1, 6]
let matrix = [row1, row2, row3]

func formingMagicSquare(s: [[Int]]) -> Int {
    
    var solutionMatrix: [[Int]] = s
    
    // check all roews to see if sum = 15; if yes, write all values to solutionMatrix
    for eachRow in s {
        var sum = 0
        for eachElement in eachRow {
            sum += eachElement
        }
        print(sum)
        if sum == 15 {
            solutionMatrix
        }
    }
    
    return 0
}

print(formingMagicSquare(s: matrix))












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
