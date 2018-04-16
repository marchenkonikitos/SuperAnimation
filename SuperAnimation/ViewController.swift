//
//  ViewController.swift
//  SuperAnimation
//
//  Created by Nikita Marchenko on 4/16/18.
//  Copyright © 2018 Nikita Marchenko. All rights reserved.
//

import UIKit
import Lottie

class ViewController: UIViewController {
    
    let animationView = LOTAnimationView(name: "fire")

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        animationView.frame = CGRect(x: 0, y: 100, width: self.view.frame.size.width, height: 300)
        animationView.contentMode = .scaleAspectFill
        animationView.loopAnimation = true
        
        self.view.addSubview(animationView)
       
    }
    
    @IBAction func burnAction(_ sender: Any) {
        animationView.play()
    }
    
    @IBAction func pauseAction(_ sender: Any) {
        animationView.pause()
    }
    
    @IBAction func stopAction(_ sender: Any) {
        animationView.stop()
    }
}

