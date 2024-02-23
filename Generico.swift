//  los métodos de estructuras son considerados como métodos que no modifican el estado de la instancia

func swapTwoStrings(_ a: inout String, _ b: inout String) {
  let tempA = a
  a = b
  b = tempA
}

var valueA = "Suscribete"
var valueB = "SwiftBeta"

swapTwoStrings(&valueA, &valueB)
print(valueA)
print(valueB)
 
func swapTwoValue<Element>(_ a: inout Element, _ b: inout Element) {
  let tempA = a
  a = b
  b = tempA
}


var valueA = "Suscribete"
var valueB = "SwiftBeta"

swapTwoValue(&valueA, &valueB)
print(valueA)
print(valueB)


struct Stack<Element> {
  var items = [Element]()

  mutating func push(_ item: Element) {
    items.append(item)
  }

  mutating func pop() -> Element {
    return items.removeLast()
  }
}

var stackOfStrings = Stack<String>()
stackOfStrings.push("Swift")
stackOfStrings.push("Beta")
stackOfStrings.push("Aprender a programar Swift")
print(stackOfStrings.items)

var stackOfInt = Stack<Int>()
stackOfInt.push(1)
stackOfInt.push(2)
stackOfInt.push(3)
print(stackOfInt.items)

var stackOfFloat = Stack<Float>()
stackOfFloat.push(1.0)
stackOfFloat.push(2.0)
stackOfFloat.push(3.0)
print(stackOfFloat.pop())
print(stackOfFloat.items)

var stackOfBool = Stack<Bool>()
stackOfBool.push(true)
stackOfBool.push(false)
stackOfBool.push(true)
print(stackOfBool.items)