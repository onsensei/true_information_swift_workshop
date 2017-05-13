import XCTest

@testable import Demo05
class CalculatorTest: XCTestCase {
    
    let calculator = Calculator()
    
    override func setUp() {
    }
    
    override func tearDown() {
    }
    
    func test10DivideBy5MustBe2() {
        let result = calculator.divideTwoNumber(dividend: 10, divisor: 5)
        XCTAssertEqual(result, 2, "Result must be 2")
    }
    
    func test10DivideBy0MustBeNil() {
        let result = calculator.divideTwoNumber(dividend: 10, divisor: 0)
        XCTAssertNil(result, "Result must be nil")
    }
    
    
    func test10DivideBy5MustBe2WithCompletionBlock() {
        calculator.divideTwoNumberWithCompletion(dividend: 10, divisor: 5){
            (result, error) -> Void in
            XCTAssertEqual(result, 2, "Result must be 2")
        }
    }
    
    func test10DivideBy0MustBeNilWithCompletionBlock() {
        calculator.divideTwoNumberWithCompletion(dividend: 10, divisor: 0){
            (result, error) -> Void in
            XCTAssertNil(result, "Result must be nil")
        }
    }
    
    
}
