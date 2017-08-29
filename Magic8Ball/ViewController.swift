//
//  ViewController.swift
//  Magic8Ball
//
//  Created by Tiago Do Couto on 29/08/17.
//  Copyright © 2017 Tiago Do Couto. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //outlets
    @IBOutlet weak var imgBall: UIImageView!
    
    //vars
    var indexBall = 0
    let ballArray = ["ball1","ball2","ball3","ball4","ball5"]
    
    //lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        updateBall()
    }
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        updateBall()
    }
    
    //actions
    @IBAction func askQuestion(_ sender: Any) {
        updateBall()
    }
    
    //custom
    func updateBall(){
        indexBall = Int(arc4random_uniform(5))
        imgBall.image =  UIImage(named: ballArray[indexBall])
    }

}

