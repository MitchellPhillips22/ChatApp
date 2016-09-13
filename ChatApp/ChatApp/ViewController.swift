//
//  ViewController.swift
//  ChatApp
//
//  Created by Mitchell Phillips on 9/2/16.
//  Copyright © 2016 MitchellPhillips. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var welcomeLabel: UILabel!
    
    @IBOutlet weak var titleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //set view background color gradient
        setGradientBackground()
        self.view.bringSubviewToFront(welcomeLabel)
        self.view.bringSubviewToFront(titleLabel)
    }
    
//MARK- Create gradient for background
    func setGradientBackground() {
        let colorTop =  UIColor(red: 50.0/255.0, green: 149.0/255.0, blue: 200.0/255.0, alpha: 1.0).CGColor
        let colorBottom = UIColor(red: 255.0/255.0, green: 94.0/255.0, blue: 58.0/255.0, alpha: 1.0).CGColor
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [ colorTop, colorBottom]
        gradientLayer.locations = [ 0.5, 1.0]
        gradientLayer.frame = self.view.bounds
        gradientLayer.opaque = false 
        
        self.view.layer.addSublayer(gradientLayer)
        
        print("did create gradient")
    }
}


