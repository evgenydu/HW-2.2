//
//  ViewController.swift
//  HW 2.2
//
//  Created by Евгений Д on 18.09.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var redView: UIView!
    @IBOutlet var yellowView: UIView!
    @IBOutlet var greenView: UIView!
    @IBOutlet var switchButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redView.layer.cornerRadius = 100
        yellowView.layer.cornerRadius = 100
        greenView.layer.cornerRadius = 100
        switchButton.layer.cornerRadius = 10
        
    }

    @IBAction func switchColor(_ sender: Any) {
        if switchButton.currentTitle == "START" {
            redView.alpha = 1
            switchButton.setTitle("NEXT", for: .normal)
        } else {
            if redView.alpha == 1 {
                redView.alpha = 0.3
                yellowView.alpha = 1
                return
            }
            if yellowView.alpha == 1 {
                yellowView.alpha = 0.3
                greenView.alpha = 1
                return
            }
            if greenView.alpha == 1 {
                greenView.alpha = 0.3
                redView.alpha = 1
            }
        }
    }
}

