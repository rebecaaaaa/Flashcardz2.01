//
//  ViewController.swift
//  Flashcardz
//
//  Created by Rebeca Chavez on 10/13/18.
//  Copyright © 2018 Rebeca Chavez. All rights reserved.
//

import UIKit

class ViewController: UIViewController{
    
    @IBOutlet weak var frontLabel: UILabel!
    @IBOutlet weak var backLabel: UILabel!
    @IBOutlet weak var card: UIView!
    @IBOutlet weak var Button1: UIButton!
    @IBOutlet weak var Button2: UIButton!
    @IBOutlet weak var Button3: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
   
    frontLabel.layer.cornerRadius = 20.0
    backLabel.layer.cornerRadius = 20.0
    //card.clipsToBounds = true
        frontLabel.clipsToBounds = true
        backLabel.clipsToBounds = true
    card.layer.shadowRadius = 15.0
    card.layer.shadowOpacity = 0.2
    card.layer.cornerRadius = 20.0
    Button1.layer.cornerRadius = 20.0
    Button2.layer.cornerRadius = 20.0
    Button3.layer.cornerRadius = 20.0
    Button1.layer.borderWidth = 3.0
    Button1.layer.borderColor = #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1)
    Button2.layer.borderWidth = 3.0
    Button2.layer.borderColor = #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1)
    Button3.layer.borderWidth = 3.0
    Button3.layer.borderColor = #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1)
    }

    @IBAction func didTapOnFlashcard(_ sender: Any) {
        if(frontLabel.isHidden){
            frontLabel.isHidden = false
        } else {
            frontLabel.isHidden = true
        }
    }
    func updateFlashcard(question: String, answer: String){
        frontLabel.text = question
        backLabel.text = answer
    }
    
    @IBAction func didTapOnButton1(_ sender: Any) {Button1.isHidden = true
    }
    @IBAction func didTapOnButton2(_ sender: Any) {frontLabel.isHidden = true
    }
    
    @IBAction func didTapOnButton3(_ sender: Any) {Button3.isHidden = true
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
    let navigationController = segue.destination as! UINavigationController
   
        let creationController = navigationController.topViewController as! CreationViewController

creationController.flashcardsController = self}

}
