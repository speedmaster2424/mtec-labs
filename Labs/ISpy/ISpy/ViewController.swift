//
//  ViewController.swift
//  ISpy
//
//  Created by speed Master on 10/7/21.
//

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet var ImageOutlet: UIImageView!
    @IBOutlet var ScrollViewOutlet: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        ScrollViewOutlet.delegate = self
    }
    
    override func viewDidAppear(_ animated: Bool) {
        updateZoomFor(size: view.bounds.size)
    }
    
    func updateZoomFor(size: CGSize) {
        let widthScale = size.width / ImageOutlet.bounds.width
        let heightScale = size.height / ImageOutlet.bounds.height
        let scale = min(widthScale, heightScale)
        ScrollViewOutlet.minimumZoomScale = scale
        ScrollViewOutlet.zoomScale = scale
    }
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return ImageOutlet
    }
}

