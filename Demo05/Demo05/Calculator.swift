import Foundation

class Calculator {
    
    func divideTwoNumber(dividend: Int, divisor: Int) -> Float? {
        if divisor == 0 {
            return nil
        }
        return Float(dividend/divisor)
    }
    
    func divideTwoNumberWithCompletion(dividend: Int, divisor: Int, completion: ((_ result: Float?, _ error: NSError?)->Void)){
        if divisor == 0 {
            let error = NSError(domain: "Error divide by zero",
                                code: 1, userInfo: nil)
            return completion(nil, error)
        }
        return completion(Float(dividend/divisor)
            , nil)
        
    }
    
}
