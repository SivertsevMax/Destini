import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var firstWay: UIButton!
    @IBOutlet weak var secondWay: UIButton!
    @IBOutlet weak var storyText: UILabel!
    
    var storyBrain = StoryBrain()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        storyText.text = "\(storyBrain.story[0].title)"
        firstWay.setTitle("\(storyBrain.story[0].choice1)", for: .normal)
        secondWay.setTitle("\(storyBrain.story[0].choice2)", for: .normal)
    }


    @IBAction func choisedWay(_ sender: UIButton) {
        guard let choise = sender.currentTitle else { return }
        update(userChoise: choise)
    }
    
    func update(userChoise: String) {
        let newStory = storyBrain.nextStory(userChoise: userChoise)
        storyText.text = "\(newStory.title)"
        firstWay.setTitle("\(newStory.choice1)", for: .normal)
        secondWay.setTitle("\(newStory.choice2)", for: .normal)
    }
}

