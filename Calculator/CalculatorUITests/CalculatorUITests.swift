import XCTest

class CalculatorUITests: XCTestCase {
        
    override func setUp() {
        super.setUp()
        continueAfterFailure = false
        let app = XCUIApplication()
        setupSnapshot(app)
        app.launch()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testExample() {
        //Arrange
        snapshot("0")
        let app = XCUIApplication()
        let operand1TextField = app.textFields["operand1"]
        operand1TextField.tap()
        operand1TextField.typeText("1")
        snapshot("1")
        
        let operand2TextField = app.textFields["operand2"]
        operand2TextField.tap()
        operand2TextField.typeText("5")
        snapshot("2")
        
        //Action
        app.buttons["addButton"].tap()
        
        //Assert
        let result = app.staticTexts["resultView"].label
        snapshot("3")
        XCTAssertEqual("Result = 6", result)
        
        
    }
    
}
