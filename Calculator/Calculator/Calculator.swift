import Foundation

class Calculator {
    
    func add(operand1: Int, operand2: Int) -> Int {
        return operand1 + operand2
    }
    
    func divide(operand1: Int, operand2: Int) -> (result: Float?, error: NSError?)  {
        
        if operand2 == 0 {
            let error = NSError(domain: "Divide by zero", code: 1, userInfo: nil)
            return (result: nil, error: error)
        }
        return (result: Float(operand1 / operand2), error: nil)
        
    }
    
}
