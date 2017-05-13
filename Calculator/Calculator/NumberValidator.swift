import Foundation

class NumberValidator: Validator {
    func validate(number: String) -> Bool {
        return number.isNumber
    }
}

extension String  {
    var isNumber : Bool {
        get{
            return !self.isEmpty && self.rangeOfCharacter(from: CharacterSet.decimalDigits.inverted) == nil
        }
    }
}
