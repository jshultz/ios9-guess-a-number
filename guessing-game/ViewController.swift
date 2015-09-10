//
//  ViewController.swift
//  guessing-game
//
//  Created by Jason Shultz on 9/9/15.
//  Copyright © 2015 HashRocket. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var answerBox: UILabel!
    
    @IBOutlet weak var inputField: UITextField!
    
    @IBAction func submitButton(sender: AnyObject) {
        
        if (inputField.text != "") {
            
            let answer:Int = Int(inputField.text!)!
            
            if (answer <= 5) {
                
                var guess:Int = Int(rand(5))!
                
                if (guess == answer) {
                    answerBox.text = "Congratulations! Your guess of /(guess) was correct!"
                } else {
                    answerBox.text = "Sorry, I guessed /(answer) and you guessed /(guess)."
                }
                
            } else {
                answerBox.text = "Your answer must be equal to or less than 5"
            }
        
        }
        
        
        
        
        
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

