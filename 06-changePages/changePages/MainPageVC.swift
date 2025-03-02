//
//  ViewController.swift
//  changePages
//
//  Created by Burak Aydın on 17.09.2023.
//

import UIKit

class MainPageVC: UIViewController {

    @IBOutlet weak var mainPageLabel: UILabel!
    
    //Runs only once when the application is first opened
    override func viewDidLoad() {
        super.viewDidLoad()
        print("viewDidLoad is working")
    }
    
    //Runs whenever the page appear
    override func viewWillAppear(_ animated: Bool) {
        print("viewWillAppear is working")
    }

    //Runs whenever the page becomes disappear
    override func viewWillDisappear(_ animated: Bool) {
        print("viewWillDisappear is working")
    }

    @IBAction func doItButton(_ sender: Any) {
        mainPageLabel.text = "Hello!"
    }
    
    @IBAction func startButton(_ sender: Any) {
        let person = Persons(name: "Ahmet", age: 23, height: 1.78, married: false)
        
        //We tell what to send and where to send data
        performSegue(withIdentifier: "SwitchGamePageVC", sender: person)
    }
    
    //The codes bellow are sender controlling codes
    //We specify that if the sent data supports the condition, it will be sent
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "SwitchGamePageVC" {
            if let data = sender as? Persons {
                let destinationVC = segue.destination as! GamePageVC
                
                //We make the sent data equal to the value on the sent page
                destinationVC.personInGamePage = data
            }
        }
    }
    
    @IBAction func addButton(_ sender: Any) {
        print("addButton is working")
    }
    
    @IBAction func saveButton(_ sender: Any) {
        print("saveButton is working")
    }
}

