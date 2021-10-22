//
//  AthleteViewController.swift
//  FavoriteAthlete
//
//  Created by speed Master on 10/6/21.
//

import UIKit

class AthleteViewController: UIViewController {

    @IBOutlet var nameTextField: UITextField!
    @IBOutlet var ageTextField: UITextField!
    @IBOutlet var leagueTextField: UITextField!
    @IBOutlet var teamTextField: UITextField!
    
    
    struct Property {
        static let unwindToListSegue = "unwindToAthleteTableViewController"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateView()
        // Do any additional setup after loading the view.
    }
    var athlete: Athlete?
    
    init?(coder: NSCoder, athlete: Athlete?) {
        self.athlete = athlete
        super.init(coder: coder)
    }
        
        required init?(coder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
    
    func updateView() {
        guard let athlete = athlete else {
            return
        }
        
        nameTextField.text = athlete.name
        ageTextField.text = String(athlete.age)
        leagueTextField.text = String(athlete.league)
        teamTextField.text = athlete.team
    }
    
    @IBAction func saveButton(_ sender: Any) {
        guard let name = nameTextField.text,
            let ageString = ageTextField.text,
            let age = Int(ageString),
            let league = leagueTextField.text,
            let team = teamTextField.text else {return}
        
        athlete = Athlete(name: name, age: age, league: league, team: team)
        
        performSegue(withIdentifier: Property.unwindToListSegue, sender: self)
    }
    
    
    

}
