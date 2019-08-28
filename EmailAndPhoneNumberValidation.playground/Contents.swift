//Created by ALgy Aly 22:47:04 28/08/2019
import UIKit

//Only defect I couldn't eliminate was the part to accept only phone number with exactly 9 digits, it reject when it's less than 9 on sufixx part, but accept more than 9
//The same to email, accept whatever@gmail.gmail.com, twice 'gmail'
func isValid(test: String, expression: String)-> Bool {
    let regex = try! NSRegularExpression(pattern: expression, options: .caseInsensitive)
    return regex.firstMatch(in: test, options: [], range: NSRange(location: 0, length: test.count)) != nil
}

if isValid(test: "algymussa@whatever.com", expression: "[A-Z0-9a-z._%+-]+@[A-Za-z0-9-]+\\.[A-Za-z]{2,4}") {
    print("Valid email")
} else {
    print("Invalid email")
}

if isValid(test: "+258-8490223334", expression: "\\+[0-9]{2,3}+-?[0-9]{9}") {
    print("Valid phone number")
} else {
    print("Invalid phone number")
}
