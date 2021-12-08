//
//  ViewController.swift
//  Traffic Lights
//
//  Created by Anastasia Izmaylova on 08.12.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var redView: UIView!
    
    @IBOutlet var yellowView: UIView!
    
    @IBOutlet var greenView: UIView!
    
    @IBOutlet var startButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redView.layer.cornerRadius = 50
        yellowView.layer.cornerRadius = 50
        greenView.layer.cornerRadius = 50
        
        redView.alpha = 0.3
        yellowView.alpha = 0.3
        greenView.alpha = 0.3
        
    }

    
    @IBAction func startPressed(_ sender: UIButton) {
        startButton.setTitle("NEXT", for: .normal)
        redView.alpha = 1
        
}

}

