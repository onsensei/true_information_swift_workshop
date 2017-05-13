import Foundation

class EmptyValidator: Validator {
    func validate(number: String) -> Bool {
        return number.isEmpty
    }
}
