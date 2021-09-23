//
//  ViewController.swift
//  CommonInputControls
//
//  Created by speed Master on 9/10/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var toggleiguess: UISwitch!
    @IBOutlet var slidkers: UISlider!
    @IBOutlet var button: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    
    button.addTarget(self, action: #selector(buttonTapped(_:)),
       for: .touchUpInside)
    }
    @IBAction func buttonTapped(_ sender: Any) {
        print("Button was tapped!")
        
        if toggleiguess.isOn {
            print("The switch is on!")
        } else {
            print("The switch is off.")
        }
        
        print("The slider is set to \(slidkers.value)")
    }
    @IBAction func Showstatus(_ sender: UISwitch) {
        if sender.isOn {
            print("The switch is on!")
        } else {
            print("The Switch is off!")
        }
    }
    @IBAction func printvalue(_ sender: UISlider) {
        print(sender.value)
    }
    @IBAction func d(_ sender: UITextField) {
        if let text = sender.text {
            print(text)
        }
    }
    @IBAction func respondToTapGesture(_ sender: UITapGestureRecognizer) {
        let location = sender.location(in: view)
        print(location)
    }
    

}
