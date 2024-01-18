import UIKit

class ViewController: UIViewController {
    var count = 0
    @IBOutlet weak var countLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        countLabel.text = "\(count)"
    }


    @IBAction func addButtonTapped(sender: UIButton) {
        count += 1
        countLabel.text = "\(count)"
    }

}

