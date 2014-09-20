//
//  ViewController.swift
//  Postcard
//
//  Created by Peter Mah on 2014-09-14.
//  Copyright (c) 2014 Peter Mah. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var messageLabel: UILabel!
    
    @IBOutlet weak var enterNameTextField: UITextField!
    
    @IBOutlet weak var enterMessageTextField: UITextField!
    
    @IBOutlet weak var mailButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(sender: UIButton) {
       //Code will evaluate when we pressed the button.
        
        //new code for challenge portion
        nameLabel.hidden = false
        nameLabel.text = enterNameTextField.text
        nameLabel.textColor = UIColor.blueColor()
        
        enterNameTextField.text = ""
        
        
        
        messageLabel.hidden = false
        //messageLabel.text = "Hello"
        messageLabel.text = enterMessageTextField.text
        
        //reset the text field after you press the submit button.
        enterMessageTextField.text = ""
        
        //hide keyboard
        enterMessageTextField.resignFirstResponder()
        
        //change the color of the label
        messageLabel.textColor = UIColor.redColor()
        
        //change the text inside the button after it's pressed
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
        
        
    }

}

