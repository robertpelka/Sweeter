//
//  ViewController.swift
//  Sweeter
//
//  Created by Robert Pelka on 05/08/2020.
//  Copyright © 2020 Robert Pelka. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    var morningChoosed: Bool = true
    
    @IBOutlet weak var background: UIImageView!
    @IBOutlet weak var morningButton: UIButton!
    @IBOutlet weak var eveningButton: UIButton!
    @IBOutlet weak var generateButton: UIButton!
    @IBOutlet weak var bottomView: UIView!
    @IBOutlet weak var chooseLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bottomView.layer.cornerRadius = 40
        bottomView.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
        morningButton.layer.cornerRadius = morningButton.frame.size.height/2
        eveningButton.layer.cornerRadius = eveningButton.frame.size.height/2
        generateButton.layer.cornerRadius = generateButton.frame.size.height/2
    }

    @IBAction func morningButtonPressed(_ sender: UIButton) {
        morningChoosed = true
        sender.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        eveningButton.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0)
        morningButton.setTitleColor(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1), for: .normal)
        chooseLabel.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        self.view.backgroundColor = #colorLiteral(red: 0.6666666667, green: 0.9607843137, blue: 1, alpha: 1)
        bottomView.backgroundColor = #colorLiteral(red: 0.5098039216, green: 0.9215686275, blue: 0.9803921569, alpha: 1)
        background.image = UIImage(named: "sun")
    }
    
    @IBAction func eveningButtonPressed(_ sender: UIButton) {
        morningChoosed = false
        sender.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        morningButton.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0)
        morningButton.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        chooseLabel.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        self.view.backgroundColor = #colorLiteral(red: 0, green: 0.1450980392, blue: 0.3568627451, alpha: 1)
        bottomView.backgroundColor = #colorLiteral(red: 0.05882352941, green: 0.2039215686, blue: 0.4156862745, alpha: 1)
        background.image = UIImage(named: "moon")
    }
    
    @IBAction func generateButtonPressed(_ sender: UIButton) {
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "goToResult") {
            let resultVC = segue.destination as! ResultViewController
            resultVC.morningChoosed = morningChoosed
        }
    }
}

