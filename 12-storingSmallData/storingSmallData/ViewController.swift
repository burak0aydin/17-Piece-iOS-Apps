//
//  ViewController.swift
//  storingSmallData
//
//  Created by Burak Aydın on 10.05.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var noteTextField: UITextField!
    @IBOutlet weak var timeTextField: UITextField!
    
    @IBOutlet weak var workToDoLabel: UILabel!
    @IBOutlet weak var timeToDoLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let noteInDatabase = UserDefaults.standard.object(forKey: "note")
        let timeInDatabase = UserDefaults.standard.object(forKey: "time")
        
        if let checkNoteInDataBase = noteInDatabase as? String {
            workToDoLabel.text = checkNoteInDataBase
        }
        
        if let checkTimeInDatabase = timeInDatabase as? String {
            timeToDoLabel.text = checkTimeInDatabase
        }
        
    }
    @IBAction func saveBotton(_ sender: Any) {
        
        workToDoLabel.text = "Work To Do : \(noteTextField.text!)"
        timeToDoLabel.text = "Time To Do : \(timeTextField.text!)"
        
        UserDefaults.standard.set(workToDoLabel.text, forKey: "note")
        UserDefaults.standard.set(timeToDoLabel.text, forKey: "time")
        
    }
    
    @IBAction func deleteBotton(_ sender: Any) {
        
        
        let noteInDatabase = UserDefaults.standard.object(forKey: "note")
        let timeInDatabase = UserDefaults.standard.object(forKey: "time")
        
        if let checkNoteInDataBase = noteInDatabase as? String {
            UserDefaults.standard.removeObject(forKey: "note")
            workToDoLabel.text = "Work To Do : "
        }
        
        if let checkTimeInDatabase = timeInDatabase as? String {
            UserDefaults.standard.removeObject(forKey: "time")
            timeToDoLabel.text = "Time To Do : "
        }
        
    }
    
}

