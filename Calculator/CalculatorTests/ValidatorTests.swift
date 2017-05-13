import XCTest

@testable import Calculator
class ValidatorTests: XCTestCase {
    
    func testIsNumber(){
        let validator = NumberValidator()
        XCTAssertTrue(validator.validate(number: "1"))
    }
    
    func testString(){
        let validator = NumberValidator()
        XCTAssertFalse(validator.validate(number: "123A"))
    }
    
    func testEmpty(){
        let validator = EmptyValidator()
        XCTAssertTrue(validator.validate(number: ""))
    }
    
    func testNotEmpty(){
        let validator = EmptyValidator()
        XCTAssertFalse(validator.validate(number: "123"))
    }
    
}
