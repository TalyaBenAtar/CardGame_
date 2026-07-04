import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var winnerLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    
    var playerName = ""
    var playerScore = 0
    var pcScore = 0

    override func viewDidLoad() {
        super.viewDidLoad()

        winnerLabel.font = UIFont.boldSystemFont(ofSize: 34)
        scoreLabel.font = UIFont.systemFont(ofSize: 28)

        showResult()
    }
    
    func showResult() {
        if playerScore > pcScore {
            winnerLabel.text = "Winner: \(playerName)"
        } else if pcScore > playerScore {
            winnerLabel.text = "Winner: PC"
        } else {
            winnerLabel.text = "It's a Tie!"
        }

        scoreLabel.text = "Score: \(playerScore)"
    }
    
    @IBAction func backPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "backToMenu", sender: self)
    }
}
