import UIKit

class GameViewController: UIViewController {
    
    @IBOutlet weak var playerNameLabel: UILabel!
    @IBOutlet weak var playerScoreLabel: UILabel!
    @IBOutlet weak var pcScoreLabel: UILabel!
    @IBOutlet weak var timerLabel: UILabel!
    @IBOutlet weak var roundLabel: UILabel!
    @IBOutlet weak var pcNameLabel: UILabel!

    @IBOutlet weak var playerCardImageView: UIImageView!
    @IBOutlet weak var pcCardImageView: UIImageView!
    
    @IBOutlet weak var timerImageView: UIImageView!
    
    var playerName = "Player"
    var playerIsOnWestSide = true
    
    var playerScore = 0
    var pcScore = 0
    var currentRound = 1
    var countdown = 5
    var timer: Timer?
    
    let maxRounds = 10
    
    struct Card {
        let imageName: String
        let value: Int
    }
    
    let cards: [Card] = [
        Card(imageName: "001-ace of spades", value: 1),
        Card(imageName: "002-ace of clubs", value: 1),
        Card(imageName: "003-ace of diamonds", value: 1),
        Card(imageName: "004-ace of hearts", value: 1),
        Card(imageName: "005-two of spades", value: 2),
        Card(imageName: "006-two of clubs", value: 2),
        Card(imageName: "007-two of diamonds", value: 2),
        Card(imageName: "008-two of hearts", value: 2),
        Card(imageName: "009-three of spades", value: 3),
        Card(imageName: "010-three of clubs", value: 3),
        Card(imageName: "011-three of diamonds", value: 3),
        Card(imageName: "012-three of hearts", value: 3),
        Card(imageName: "013-four of spades", value: 4),
        Card(imageName: "014-four of clubs", value: 4),
        Card(imageName: "015-four of diamonds", value: 4),
        Card(imageName: "016-four of hearts", value: 4),
        Card(imageName: "017-five of spades", value: 5),
        Card(imageName: "018-five of clubs", value: 5),
        Card(imageName: "019-five of diamonds", value: 5),
        Card(imageName: "020-five of hearts", value: 5),
        Card(imageName: "021-six of spades", value: 6),
        Card(imageName: "022-six of clubs", value: 6),
        Card(imageName: "023-six of diamonds", value: 6),
        Card(imageName: "024-six of hearts", value: 6),
        Card(imageName: "025-seven of spades", value: 7),
        Card(imageName: "026-seven of clubs", value: 7),
        Card(imageName: "027-seven of diamonds", value: 7),
        Card(imageName: "028-seven of hearts", value: 7),
        Card(imageName: "029-eight of spades", value: 8),
        Card(imageName: "030-eight of clubs", value: 8),
        Card(imageName: "031-eight of diamonds", value: 8),
        Card(imageName: "032-eight of hearts", value: 8),
        Card(imageName: "033-nine of spades", value: 9),
        Card(imageName: "034-nine of clubs", value: 9),
        Card(imageName: "035-nine of diamonds", value: 9),
        Card(imageName: "036-nine of hearts", value: 9),
        Card(imageName: "037-ten of spades", value: 10),
        Card(imageName: "038-ten of clubs", value: 10),
        Card(imageName: "039-ten of diamonds", value: 10),
        Card(imageName: "040-ten of hearts", value: 10),
        Card(imageName: "041-jack of spades", value: 11),
        Card(imageName: "042-jack of clubs", value: 11),
        Card(imageName: "043-jack of diamonds", value: 11),
        Card(imageName: "044-jack of hearts", value: 11),
        Card(imageName: "045-queen of spades", value: 12),
        Card(imageName: "046-queen of clubs", value: 12),
        Card(imageName: "047-queen of diamonds", value: 12),
        Card(imageName: "048-queen of hearts", value: 12),
        Card(imageName: "049-king of spades", value: 13),
        Card(imageName: "050-king of clubs", value: 13),
        Card(imageName: "051-king of diamonds", value: 13),
        Card(imageName: "052-king of hearts", value: 13)
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        playerNameLabel.text = playerName
        
        setupCardImageViews()
        updateLabels()
        playRound()
        startTimer()
        
        timerImageView.image = UIImage(named: "timer_pic")
    }
    
    func setupCardImageViews() {
        playerCardImageView.contentMode = .scaleAspectFill
        pcCardImageView.contentMode = .scaleAspectFill
        
        playerCardImageView.layer.cornerRadius = 8
        pcCardImageView.layer.cornerRadius = 8
        
        playerCardImageView.clipsToBounds = true
        pcCardImageView.clipsToBounds = true
    }
    
    func startTimer() {
        timer?.invalidate()
        timer = Timer.scheduledTimer(timeInterval: 1.0,
                                     target: self,
                                     selector: #selector(timerTick),
                                     userInfo: nil,
                                     repeats: true)
    }
    
    @objc func timerTick() {
        countdown -= 1
        updateLabels()
        
        if countdown == 2 {
            showCardBacks()
        }
        
        if countdown == 0 {
            if currentRound == maxRounds {
                timer?.invalidate()
                performSegue(withIdentifier: "gameToResult", sender: self)
            } else {
                currentRound += 1
                countdown = 5
                playRound()
                updateLabels()
            }
        }
    }
    
    func playRound() {
        let playerCard = cards.randomElement()!
        let pcCard = cards.randomElement()!
        
        playerCardImageView.backgroundColor = .clear
        pcCardImageView.backgroundColor = .clear
        
        if playerIsOnWestSide {
            playerCardImageView.image = UIImage(named: playerCard.imageName)
            pcCardImageView.image = UIImage(named: pcCard.imageName)
        } else {
            playerCardImageView.image = UIImage(named: pcCard.imageName)
            pcCardImageView.image = UIImage(named: playerCard.imageName)
        }
        
        if playerCard.value > pcCard.value {
            playerScore += 1
        } else {
            pcScore += 1
        }
        
        updateLabels()
    }
    
    func showCardBacks() {
        playerCardImageView.image = nil
        pcCardImageView.image = nil
        
        playerCardImageView.backgroundColor = .systemBlue
        pcCardImageView.backgroundColor = .systemBlue
    }
    
    func updateLabels() {
        if playerIsOnWestSide {
            playerNameLabel.text = playerName
            playerScoreLabel.text = "\(playerScore)"
            pcNameLabel.text = "PC"
            pcScoreLabel.text = "\(pcScore)"
        } else {
            playerNameLabel.text = "PC"
            playerScoreLabel.text = "\(pcScore)"
            pcNameLabel.text = playerName
            pcScoreLabel.text = "\(playerScore)"
        }
        
        timerLabel.text = "\(countdown)"
        roundLabel.text = "Round \(currentRound)/\(maxRounds)"
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "gameToResult" {
            let resultVC = segue.destination as! ResultViewController
            resultVC.playerName = playerName
            resultVC.playerScore = playerScore
            resultVC.pcScore = pcScore
        }
    }
}
