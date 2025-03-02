//
//  ViewController.swift
//  Timer
//
//  Created by Burak Aydın on 17.08.2023.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var timeLabel: UILabel!
    
    var timer = Timer()
    var remainingTime = 5
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        timeLabel.text = String(remainingTime)
    }

    @IBAction func startButton(_ sender: Any) {
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timerFunc), userInfo: nil, repeats: true)
    }
    
    @objc func timerFunc (){
        
        remainingTime -= 1
        timeLabel.text = String(remainingTime)
        
        if remainingTime == 0 {
            
            timer.invalidate()
            remainingTime = 11
        }
        
    }
    
}

