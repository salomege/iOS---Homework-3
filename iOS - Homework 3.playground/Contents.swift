import Cocoa

var greeting = "Hello, playground"

1//

var city = ["Paris", "Rome", "Madrid" ]
(city[0],city[2])=(city[2], city[0])
print(city)


//2
var myArray = [1, 2, 3, 4, 5, 6, 7]

let shouldDeleteOneMore = myArray.count % 2 != 0
let deleteCount = (myArray.count / 2) + (shouldDeleteOneMore ? 1 : 0)

if deleteCount > 0 {
    myArray.removeFirst(deleteCount)
}

print(myArray)


//3
var numb: [Int] = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
var oddNumbers = [Int]()
var evenNumbers = [Int]()
for i in numb {
    if i % 2 != 0 {
        oddNumbers.append (i)
    }else{
        evenNumbers.append (i)
    }
}
print(oddNumbers)
print(evenNumbers)

//4
var prices: [Double] = [2.5, 3.0, 5.5, 8.9, 1.5]
var highestPrice = prices[0]
for price in prices {
    if price > highestPrice {
       highestPrice = price
    }
    print (highestPrice)
    }

//5
var int1: [Int] = [8, 4, 9, 9, 0, 2]
var int2: [Int] = [1, 0, 9, 2, 3, 7, 0, 1]
var newInt = int1 + int2
let n = newInt.count

for a in 0..<n {
    for j in 0..<(n - 1 - a) {
        if newInt[j] > newInt[j + 1] {
            let numb1 = newInt[j]
            newInt[j] = newInt[j + 1]
            newInt[j + 1] = numb1
        }
    }
    print(newInt)
}

//6
let word = "something"
let characterArray = Array (word)
var setCharacterArray = Set (characterArray)

if characterArray.count == setCharacterArray.count {
    print ("word conteins unic cheracters")}
else{print("word doesn't contein unic cheracters")
}
    //7
    var A: Set = [2, 3, 5, 11, 20, 25]
    var B: Set = [1, 3, 5, 8, 11, 25, 35]
    
    print(A.intersection(B))
    print(A.union(B))
    print(A.symmetricDifference(B))
    
    //8
    var menu1: Set = ["burger", "salad", "frie", "coffee", "cake"]
    var menu2: Set = ["coffee", "cake"]
    if menu2.isSubset(of: menu1) {
        print("menu2 is a subset of menu1.")
    } else {
        print("menu2 is not a subset of menu1.")
    }
    
    //9
    var names = ["Salome", "Ann", "David", "Ann"]
    var setNames = Set(names)
    if names.count == setNames.count {
        print ("There is no ident elements in the array")}
    else{print("there is ident elements in the array")
    }

  //10
var filmDictionary = [String : Double] ()
 filmDictionary = [
    "PAST LIVES": 9.2,
    "BLACKBERRY": 9.3,
    "RYE LANE": 9.1,
    "FULL TIME": 8.9,
    "THE BEASTS": 9.5
]
let rating = filmDictionary.values.reduce(0, +)
let filmCount = filmDictionary.count
let avarage = rating / filmCount
