import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstWay: UIButton!
    
    @IBOutlet weak var secondWay: UIButton!
    
    @IBOutlet weak var storyText: UILabel!
    
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        storyText.text = "\(story[0].title)"
        firstWay.setTitle("\(story[0].choice1)", for: .normal)
        secondWay.setTitle("\(story[0].choice2)", for: .normal)
    }


    @IBAction func choisedWay(_ sender: UIButton) {
    }
}

