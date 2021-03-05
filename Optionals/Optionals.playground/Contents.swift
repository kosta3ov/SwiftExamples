import Foundation

// Introduction

// enum Optional<T> {
//     case value(T)
//     case none
// }

// implicit optionals

var str: String? = nil
var intNumber: Int? = 4
str = "example"
intNumber = nil

print(str)
print(intNumber)

var optionalDouble: Double? = 5.6 // Optional<Double>
var nonOptionaDouble = 2.0 // Double

optionalDouble = 2
optionalDouble = Optional<Double>(3)

//optionalDouble + nonOptionaDouble // Optional + Double
//optionalDouble + Optional<Double>(1.1) // Optional + Optional

if let unwrappedDouble = optionalDouble {
    print(unwrappedDouble)
}

let unwrappedOrDefaultDouble = optionalDouble ?? 0.0

switch optionalDouble {
case .some(let unwrappedValue):
    print(unwrappedValue)
case .none:
    print("No value")
}

if case .some(let unwrappedDouble) = optionalDouble {
    print(unwrappedDouble)
}

if optionalDouble != nil {
    print("value = \(optionalDouble)")
} else {
    print("no value")
}

// explicit optionals

var explicitStr: String! = "2323"
explicitStr = nil
//print(explicitStr.count)


// optional chaining

struct SimpleStruct {
    let firstValue: Int
    let secondValue: String?
}

//var simple1: SimpleStruct? = SimpleStruct(firstValue: 2, secondValue: nil)
//print(simple1?.firstValue ?? 1)
//simple1 = nil
//print(simple1?.firstValue ?? 1)



//var simple2: SimpleStruct! = SimpleStruct(firstValue: 2, secondValue: nil)
//print(simple2.firstValue)
//simple2 = nil
//print(simple2.firstValue)



//var simple3: SimpleStruct? = SimpleStruct(firstValue: 2, secondValue: "abc")
//print(simple3?.secondValue?.count ?? 0)
//simple3 = nil
//print(simple3?.secondValue?.count ?? 0)



//var simple4: SimpleStruct! = SimpleStruct(firstValue: 2, secondValue: "abc")
//print(simple4.secondValue?.count ?? 0)
//simple3 = nil
//print(simple4.secondValue?.count ?? 0)

// Error handling

enum MyError: Error {
    case noValue
}

func increment(number: Int?) throws -> Int {
    if let unwrappedNumber = number {
        return unwrappedNumber + 1
    } else {
        throw MyError.noValue
    }
}

var value: Int? = 2

let newValue = try? increment(number: value)
print(newValue)

if let unwrappedIncrementedValue = try? increment(number: value) {
    print(unwrappedIncrementedValue)
} else {
    print("value is nil")
}

try! increment(number: value)

value = nil

try! increment(number: value)








