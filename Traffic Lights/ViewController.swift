//
//  ViewController.swift
//  Traffic Lights
//
//  Created by Anastasia Izmaylova on 08.12.2021.
//

import UIKit

class ViewController: UIViewController {
    
    enum CurrentView {
        case red, yellow, green
    }

    @IBOutlet var redView: UIView!
    @IBOutlet var yellowView: UIView!
    @IBOutlet var greenView: UIView!
    
    @IBOutlet var startButton: UIButton!
    
    private var currentView = CurrentView.red
    private let lightIsOn: CGFloat = 1
    private let lightIsOff: CGFloat = 0.3
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redView.alpha = lightIsOff
        yellowView.alpha = lightIsOff
        greenView.alpha = lightIsOff
        
    }
    
    override func viewWillLayoutSubviews() {
        redView.layer.cornerRadius = redView.frame.width / 2
        yellowView.layer.cornerRadius = yellowView.frame.width / 2
        greenView.layer.cornerRadius = greenView.frame.width / 2
        
    }

    
    @IBAction func startPressed(_ sender: UIButton) {
        
            startButton.setTitle("NEXT", for: .normal)
        
        
    
    switch currentView {
    case .red:
        greenView.alpha = lightIsOff
        redView.alpha = lightIsOn
        currentView = .yellow
    case .yellow:
        redView.alpha = lightIsOff
        yellowView.alpha = lightIsOn
        currentView = .green
    case .green:
        yellowView.alpha = lightIsOff
        greenView.alpha = lightIsOn
        currentView = .red
    }

}
}

