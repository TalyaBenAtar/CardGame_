import UIKit
import CoreLocation

class StartViewController: UIViewController, CLLocationManagerDelegate {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var greetingLabel: UILabel!
    @IBOutlet weak var westSideImageView: UIImageView!
    @IBOutlet weak var eastSideImageView: UIImageView!
    @IBOutlet weak var startGameButton: UIButton!
    
    @IBOutlet weak var locationLabel: UILabel!

    let locationManager = CLLocationManager()
    let middleLongitude = 34.817549168324334

    var playerIsOnWestSide = true
    var hasLocation = false

    override func viewDidLoad() {
        super.viewDidLoad()

        westSideImageView.image = UIImage(named: "west_side")
        eastSideImageView.image = UIImage(named: "east_side")
        
        locationLabel.text="Location: Unkown"

        startGameButton.isHidden = true
        nameTextField.addTarget(self, action: #selector(nameChanged), for: .editingChanged)

        loadSavedName()
        setupLocation()
        updateStartButton()
    }

    func setupLocation() {
        locationManager.delegate = self
        locationManager.requestWhenInUseAuthorization()
        locationManager.requestLocation()
    }

    func loadSavedName() {
        let savedName = UserDefaults.standard.string(forKey: "playerName") ?? ""

        if savedName.isEmpty {
            greetingLabel.text = "Insert name"
            nameTextField.isHidden = false
        } else {
            greetingLabel.text = "Hi \(savedName)"
            nameTextField.text = savedName
            nameTextField.isHidden = true
        }
    }

    @objc func nameChanged() {
        updateStartButton()
    }

    func hasValidName() -> Bool {
        let name = nameTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines) ?? ""
        return !name.isEmpty
    }

    func updateStartButton() {
        startGameButton.isHidden = !(hasValidName() && hasLocation)
    }

    func saveName() -> String {
        let name = nameTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines) ?? ""
        let finalName = name.isEmpty ? "Player" : name

        UserDefaults.standard.set(finalName, forKey: "playerName")
        return finalName
    }

    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let location = locations.last else { return }

        let userLongitude = location.coordinate.longitude
        playerIsOnWestSide = userLongitude < middleLongitude
        hasLocation = true

        print("User longitude: \(userLongitude)")
        print(playerIsOnWestSide ? "Player is on West Side" : "Player is on East Side")

        if playerIsOnWestSide{
            locationLabel.text = "Location: West Side"
        } else {
            locationLabel.text = "Location: East Side"
        }
        
        updateStartButton()
    }

    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        print("Location error: \(error.localizedDescription)")
        hasLocation = false
        locationLabel.text = "Location: Unknown"
        updateStartButton()
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "startToGame" {
            let gameVC = segue.destination as! GameViewController
            gameVC.playerName = saveName()
            gameVC.playerIsOnWestSide = playerIsOnWestSide
        }
    }
}
