//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Andrey Nersesyan on 27/02/2019.
//  Copyright © 2019 Andrey Nersesyan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    
    var randomBallNumber: Int = 0
    
   
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        newBallImage()
        
    }

    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        newBallImage()
    }
    
    func newBallImage(){
        randomBallNumber = Int.random(in: 0 ... 4)
        imageView.image = UIImage(named: ballArray[randomBallNumber] )
        
    }

    @IBOutlet weak var imageView: UIImageView!
    
    
    @IBAction func askButtonPressed(_ sender: UIButton) {
        newBallImage()
    }
}

