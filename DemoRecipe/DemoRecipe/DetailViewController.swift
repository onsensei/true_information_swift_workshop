import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBAction func onBackToMain(_ sender: Any) {
        performSegue(withIdentifier: "backto_main", sender: self)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = "XXXX"
    }


}
