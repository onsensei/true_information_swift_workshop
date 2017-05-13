import Foundation

class Calculator {
    
    func divideTwoNumber(dividend: Int, divisor: Int) -> Float? {
        if divisor == 0 {
            return nil
        }
        return Float(dividend/divisor)
    }
    
}
