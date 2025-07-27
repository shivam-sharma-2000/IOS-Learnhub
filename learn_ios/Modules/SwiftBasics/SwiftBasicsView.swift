import SwiftUI

struct SwiftBasicsView: View {
    let concepts: [SwiftConcept] = [
        SwiftConcept(
            title: "Swift - Basic Syntax",
            videoId: "7eY-CRZ_cak",
            sections: [
                .paragraph("Its syntaxes are much more clear, concise and easy to read. Now let us now see the basic structure of a Swift program, so that it will be easy for you to understand the basic building blocks of the Swift programming language."),
                .code("""
/* My first Swift program */
var myString = "Hello, World!"

print(myString)
"""
                     ),
                
                    .title("Import Statement"),
                .paragraph("You can use the import statement to import any Objective-C framework or C library) or Swift library directly into your Swift program."),
                
                    .subTitle("Example"),
                .code("import Foundation\nimport SwiftUI"),
                
                    .title("Semicolons"),
                .paragraph("In Swift, semicolons after each statement are optional. It is totally up to your choice whether you want or not to type a semicolon (;) after each statement in your code, the compiler does not complain about it.\n\nHowever, if you are using multiple statements in the same line, then it is required to use a semicolon as a delimiter, otherwise, the compiler will raise a syntax error."),
                .code("""
// Separating multiple statements using semicolon
var myString = "Hello, World!"; print(myString)
"""),
                .title("Identifiers"),
                .paragraph("A Swift identifier is a name used to identify a variable, function, or any other user-defined item. An identifier name must start with the alphabet A to Z or a to z or an underscore _ followed by zero or more letters, underscores, and digits (0 to 9).\n\nSwift does not allow special characters such as @, $, and % within identifiers. Swift is a case-sensitive programming language, so Manpower and manpower are two different identifiers in Swift."),
                .subTitle("Example"),
                .code("""
Azad       zara    abc   move_name  a_123
myname50   _temp   j     a23b9      retVal
"""),
                .title("Looping Constructs"),
                .paragraph("Loops are used to repeat a block of code multiple times. Swift Loops are for-in, while, and repeat-while."),
                .subTitle("For In Loop"),
                .code("""
let employees = ["Sudhir", "Yash", "Ravi", "Alshifa", "Akansha"]
                      
for name in employees {
    print("Employee: \\(name)")
}
"""),
                .subTitle("While Loop"),
                .code("""
// Swift program to illustrate the use of while loop

// Creating and initializing variables
var a = 5, fact = 1, i = 1

// Finding the factorial 
// Using while loop
while (i <= a)
{
    fact *= i
    i += 1
}
print("Factorial of given number is", fact)
"""),
                .subTitle("Repeat - while loop"),
                .code("""
// Swift program to illustrate the use of repeat-while loop

// Creating and initializing variables
var a = 10
var i = 1

// Using repeat-while loop
repeat
{
    print(i)
    i = i + 1
}while(i > a)
"""),
                .title("Arrays"),
                .paragraph("An array is a collection of elements of the same type. Arrays are used to store multiple values of the same data type in a single variable."),
                .code("""
var fruitPrices = [30, 50, 40, 20]
let carNames: [String] = ["Maruti", "BMW", "Audi", "BYD"]
"""),
                .title("Structures"),
                .code("""
struct Book {
    var title: String
    var author: String
    
    func description() {
        print("'\\(title)' by \\(author)")
    }
}

let book1 = Book(title: "The Swift Programming Language", author: "Apple Inc.")
book1.description()
"""),
                .title("Classes"),
                .paragraph("A class is a blueprint for creating objects. It defines the attributes (properties) and behaviors (methods) that an object can have."),
                .code("""
import Foundation

class Vehicle {
    var brand: String

    init(brand: String) {
        self.brand = brand
    }

    func honk() {
        print("\\(brand) makes a sound")
    }
}

class Car: Vehicle {
    override func honk() {
        print("\\(brand) honks: Beep Beep!")
    }
}

let myCar = Car(brand: "Toyota")
myCar.honk()
""")
                
                
                
            ]
        ),
        SwiftConcept(
            title: "Functions",
            videoId: nil,
            sections: [
                .paragraph("Functions let you reuse blocks of code."),
                .code("""
            func greet(user: String) {
                print("Hello, \\(user)!")
            }
            
            greet(user: "Shivam")
            """)
            ]
        ),
        SwiftConcept(
            title: "Variables & Constants",
            videoId: nil,
            sections: [
                .paragraph("Learn how to declare and use variables (`var`) and constants (`let`) in Swift."),
                .code("""
            var name = "Shivam"
            let age = 25
            print("Name: \\(name), Age: \\(age)")
            """)
            ]
        ),
        SwiftConcept(
            title: "Conditionals",
            videoId: nil,
            sections: [
                .paragraph("Use if/else to add logic to your code."),
                .code("""
            let score = 85
            
            if score > 90 {
                print("Excellent!")
            } else {
                print("Keep improving!")
            }
            """)
            ]        )
    ]
    
    var body: some View {
        List(concepts) { concept in
            NavigationLink(destination: ConceptDetailView(concept: concept)) {
                Text(concept.title)
                    .font(.headline)
                    .padding(.vertical, 8)
            }
        }
        .padding(.top)
        .navigationTitle("Swift Basics")
    }
}
