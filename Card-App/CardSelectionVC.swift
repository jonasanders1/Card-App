//
//  CardSelectionVC.swift
//  Card-App
//
//  Created by Jonas Andersen on 19/08/2023.
//

import UIKit

class CardSelectionVC: UIViewController {
    
    
    // Card
    @IBOutlet var cardImageView: UIImageView!
    // Outlets collection containing the buttons
    @IBOutlet var buttons: [UIButton]!
    
    var cards: [UIImage] = Card.allValues
    var timer: Timer!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        startTimer()
        // Giving the buttons som border radius
        for button in buttons {
            button.layer.cornerRadius = 8
        }
       
    }
    
    
    
    func startTimer(){
        timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(showRandomImage), userInfo: nil,  repeats: true)
    }
    
    
    @objc func showRandomImage(){
        cardImageView.image = cards.randomElement() ?? UIImage(named: "AS")
    }
    
    
    // Action for tapping the stopbtn, restartbtn and rulesbtn
    @IBAction func stoppButtonTapped(_ sender: UIButton) {
        // Stops the timer
        timer.invalidate()
    }
    
    
    @IBAction func restartButtonTapped(_ sender: UIButton) {
        timer.invalidate()
        startTimer()
    }
 
    

}
