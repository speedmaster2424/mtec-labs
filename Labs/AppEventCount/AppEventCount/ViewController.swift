//
//  ViewController.swift
//  AppEventCount
//
//  Created by speed Master on 10/4/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var applicationfinishedlaunching: UILabel!
    @IBOutlet var applicationConfigured: UILabel!
    @IBOutlet var sceneWillConnect: UILabel!
    @IBOutlet var sceneDidBecomeActive: UILabel!
    @IBOutlet var SceneWillResignActive: UILabel!
    @IBOutlet var sceneWillEnterForground: UILabel!
    @IBOutlet var sceneDidEnterBackground: UILabel!
    
    var sceneWillConnectFinaly = 0
    var sceneDidBecomeActiveFinaly = 0
    var sceneWillResignActiveFinaly = 0
    var sceneWillEnterForgroundFinaly = 0
    var sceneDidEnterBackgroundFinaly = 0
    
    var appDelegate = (UIApplication.shared.delegate as! AppDelegate)
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateView()
        // Do any additional setup after loading the view.
    }

    func updateView() {
        applicationfinishedlaunching.text = "The App has launched \(appDelegate.launchCount) time(s)"
        applicationConfigured.text = "The App configured \(appDelegate.configurationForConnectingCount) time(s)"
        sceneWillConnect.text = "SceneWillConnect \(sceneWillConnectFinaly) time(s)"
        sceneDidBecomeActive.text = "SceneDidBecomeActive \(sceneDidBecomeActiveFinaly) time(s)"
        SceneWillResignActive.text = "SceneWillResignActive \(sceneWillResignActiveFinaly) time(s)"
        sceneWillEnterForground.text = "SceneWillEnterForground \(sceneWillEnterForgroundFinaly) time(s)"
        sceneDidEnterBackground.text = "SceneDidEnterBackground \(sceneDidEnterBackgroundFinaly) time(s)"
    }

}

