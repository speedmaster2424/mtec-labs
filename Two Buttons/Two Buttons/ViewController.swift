//
//  ViewController.swift
//  Two Buttons
//
//  Created by speed Master on 9/10/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var label: UILabel!
    @IBOutlet var textField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func setTextButtonTapped(_ sender: Any) {
        label.text = textField.text
    }
    @IBAction func clearTextButtonTapped(_ sender: Any) {
        label.text = "Please enter the text you want shown"
    }
    @IBAction func setTextWhenEntered(_ sender: UITextField) {
        label.text = textField.text
    }
    

}

