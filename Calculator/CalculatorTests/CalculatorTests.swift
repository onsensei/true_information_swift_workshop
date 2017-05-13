import XCTest

@testable import Calculator
class CalculatorTests: XCTestCase {
    
    let calculator = Calculator()
    
    func testDivide10with5_MustBe_2() {
        let result =
            calculator.divide(operand1: 10, operand2: 5)
        XCTAssert(result.result == 2, "Result 10/5 = 2")
        XCTAssertNil(result.error)
    }
    
    func testDivide10with0_MustBe_nil() {
        let result =
            calculator.divide(operand1: 10, operand2: 0)
        XCTAssertNil(result.result)
        XCTAssertEqual("Divide by zero", result.error?.domain)
    }
    
    func testAdd10with5_MustBe_15() {
        let result =
            calculator.add(operand1: 10, operand2: 5)
        XCTAssert(result == 15, "Result 10+5 = 15")
    }
    
    func testAdd10with15_MustBe_25() {
        let result =
            calculator.add(operand1: 10, operand2: 15)
        XCTAssert(result == 25, "Result 10+15 = 25")
    }
    
}
