//
//  ResultViewController.swift
//  Sweeter
//
//  Created by Robert Pelka on 06/08/2020.
//  Copyright © 2020 Robert Pelka. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    var morningChoosed: Bool = true
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var firstTextView: UITextView!
    @IBOutlet weak var secondTextView: UITextView!
    @IBOutlet weak var firstCopyButton: UIButton!
    @IBOutlet weak var secondCopyButton: UIButton!
    @IBOutlet weak var generateNewButton: UIButton!
    @IBOutlet weak var returnButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        firstCopyButton.layer.cornerRadius = firstCopyButton.frame.size.height/2
        secondCopyButton.layer.cornerRadius = secondCopyButton.frame.size.height/2
        generateNewButton.layer.cornerRadius = generateNewButton.frame.size.height/2
        returnButton.layer.cornerRadius = returnButton.frame.size.height/2
        firstTextView.layer.cornerRadius = 10
        secondTextView.layer.cornerRadius = 10
        firstTextView.textContainerInset = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
        secondTextView.textContainerInset = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
        
        if morningChoosed {
            self.view.backgroundColor = #colorLiteral(red: 0.5098039216, green: 0.9215686275, blue: 0.9803921569, alpha: 1)
            titleLabel.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
            firstTextView.text = generateFirstMorningText()
            secondTextView.text = generateSecondMorningText()
        }
        else {
            self.view.backgroundColor = #colorLiteral(red: 0.05882352941, green: 0.2039215686, blue: 0.4156862745, alpha: 1)
            titleLabel.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
            firstTextView.text = generateFirstEveningText()
            secondTextView.text = generateSecondEveningText()
        }
    }
    
    @IBAction func generateNewButton(_ sender: UIButton) {
        if morningChoosed {
            firstTextView.text = generateFirstMorningText()
            secondTextView.text = generateSecondMorningText()
        }
        else {
            firstTextView.text = generateFirstEveningText()
            secondTextView.text = generateSecondEveningText()
        }
    }
    
    @IBAction func returnButton(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    @IBAction func firstCopyButtonPressed(_ sender: UIButton) {
        UIPasteboard.general.string = firstTextView.text
    }
    @IBAction func secondCopyButtonPressed(_ sender: UIButton) {
        UIPasteboard.general.string = secondTextView.text
    }
    
}
