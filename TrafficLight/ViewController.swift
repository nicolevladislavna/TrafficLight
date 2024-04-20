//
//  ViewController.swift
//  TrafficLight
//
//  Created by Veronika Iskandarova on 20.04.2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var redLight: UIView!
    @IBOutlet var yellowLight: UIView!
    @IBOutlet var greenLight: UIView!
    
    @IBOutlet var showStartButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redLight.alpha = 0.3
        redLight.layer.cornerRadius = redLight.frame.height / 2
        yellowLight.alpha = 0.3
        yellowLight.layer.cornerRadius = yellowLight.frame.height / 2
        greenLight.alpha = 0.3
        greenLight.layer.cornerRadius = greenLight.frame.height / 2
        
        showStartButton.layer.cornerRadius = 10
        showStartButton.setTitle("START!", for: .normal)
    }
    
    @IBAction func startButton(_ sender: UIButton) {
        if redLight.alpha < 1 && yellowLight.alpha < 1 && greenLight.alpha < 1 {
        redLight.alpha = 1
            showStartButton.setTitle("NEXT!", for: .normal)
        } else if redLight.alpha == 1 {
            redLight.alpha = 0.3
            yellowLight.alpha = 1
            greenLight.alpha = 0.3
        } else if yellowLight.alpha == 1 {
            yellowLight.alpha = 0.3
            redLight.alpha = 0.3
            greenLight.alpha = 1
        } else {
            redLight.alpha = 1
            yellowLight.alpha = 0.3
            greenLight.alpha = 0.3
        }
    }
}

