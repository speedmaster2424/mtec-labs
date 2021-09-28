//
//  SecondViewController.swift
//  OrderOfEvents
//
//  Created by speed Master on 9/28/21.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet var middleScreenLabel: UILabel!
    var eventNumber: Int = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addEvent(from: "viewDidLoad")
    }
    
    func addEvent(from: String) {
        if let existingText = middleScreenLabel.text {
            middleScreenLabel.text = "\(existingText) \nEvent number \(eventNumber) was \(from)"
            eventNumber += 1
        }
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        addEvent(from: "viewWillAppear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        addEvent(from: "viewDidAppear")
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        addEvent(from: "viewWillDisappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        
        addEvent(from: "viewDidDisappear")
    }
}
