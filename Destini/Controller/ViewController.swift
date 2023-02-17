import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var firstWay: UIButton!
    @IBOutlet weak var secondWay: UIButton!
    @IBOutlet weak var storyText: UILabel!
    
    var storyBrain = StoryBrain()
    var currentStorLine = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        storyText.text = "\(storyBrain.story[0].title)"
        firstWay.setTitle("\(storyBrain.story[0].choice1)", for: .normal)
        secondWay.setTitle("\(storyBrain.story[0].choice2)", for: .normal)
    }


    @IBAction func choisedWay(_ sender: UIButton) {
        guard let choise = sender.currentTitle else { return }
        
        if choise == storyBrain.story[currentStorLine].choice1 {
            currentStorLine = currentStorLine * 2 + 1
            newQuestions(userChoise: currentStorLine)
            print(currentStorLine)
        } else {
            currentStorLine = currentStorLine * 2 + 2
            newQuestions(userChoise: currentStorLine)
            print(currentStorLine)
        }
    }
    
    func newQuestions(userChoise: Int) {
        storyText.text = "\(storyBrain.story[userChoise].title)"
        firstWay.setTitle("\(storyBrain.story[userChoise].choice1)", for: .normal)
        secondWay.setTitle("\(storyBrain.story[userChoise].choice2)", for: .normal)
    }
}

