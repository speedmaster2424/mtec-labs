//
//  editMenuViewController.swift
//  scoreBoardProject
//
//  Created by speed Master on 10/19/21.
//

import UIKit

class editMenuViewController: UIViewController {

    @IBOutlet var NameField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func Save(_ sender: Any) {
        guard let name = NameField.text else {return}
        
        
    }
    
}

