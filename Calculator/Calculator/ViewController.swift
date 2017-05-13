import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var operand1: UITextField!
    @IBOutlet weak var operand2: UITextField!
    @IBOutlet weak var result: UILabel!
    
    @IBAction func onAdd(_ sender: Any) {
        let calculator = Calculator()
        let op1 = Int(operand1.text!)
        let op2 = Int(operand2.text!)
        let temp = calculator.add(operand1: op1!, operand2: op2!)
        result.text = "Result = \(temp)"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}

