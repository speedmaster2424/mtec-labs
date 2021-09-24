//
//  ViewController.swift
//  Login
//
//  Created by speed Master on 9/24/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var usernameTextField: UITextField!
    @IBOutlet var forgotUsername: UIButton!
    @IBOutlet var forgotPassword: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let sender = sender as? UIButton else {return}
        
        if sender == forgotPassword {
            segue.destination.navigationItem.title = "Forgot Password"
        } else if sender == forgotUsername {
            segue.destination.navigationItem.title = "Forgot Username"
        } else {
            segue.destination.navigationItem.title = usernameTextField.text
        }
    }
    
    @IBAction func callForgotUsername(_ sender: Any) {
        performSegue(withIdentifier: "BobRossToBobby", sender: forgotUsername)
    }
    
    @IBAction func callForgotPassword(_ sender: Any) {
        performSegue(withIdentifier: "BobRossToBobby", sender: forgotPassword)
    }
}

