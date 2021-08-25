//
//  ViewController.swift
//  IBBasics
//
//  Created by speed Master on 8/25/21.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet var mainLabel: UILabel!
    @IBOutlet var mainButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func changeTitle(_ sender: Any) {
        mainLabel.text = "This app rocks!"
    }
    
    
    
}

