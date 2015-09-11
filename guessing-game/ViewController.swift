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
    
    @IBAction func stuff(sender: AnyObject) {
        print("Hello world " + inputField.text!)
        
        if (inputField.text != "") {
            
            let guess:Int = Int(inputField.text!)!
            
            if (guess <= 5 && guess >= 1) {
                
                let answer = Int(arc4random_uniform(5) + 1)
                
                print("Answer: \(answer)")
                print("guess: \(guess)")
                
                if (answer == guess) {
                    answerBox.text = "Your guess of \(guess) was correct!"
                } else {
                    answerBox.text = "Sorry, I picked \(answer) and you guessed \(guess)."
                }
                
                inputField.text = ""
                
            } else {
                answerBox.text = "Your answer must be between 1 and 5"
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

