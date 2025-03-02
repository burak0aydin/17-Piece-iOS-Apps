//
//  ViewController.swift
//  viewController
//
//  Created by Burak Aydın on 9.05.2023.
//

import UIKit

class ViewController: UIViewController {

    var getPassword = ""
    
    @IBOutlet weak var view1Label: UILabel!
    
    
    @IBOutlet weak var usersText: UITextField!
    
    
  
    override func viewDidLoad() {    // uygulama açıldığında çağrılır birdaha gösterilmez
        super.viewDidLoad()
    
    }
    
    override func viewWillAppear(_ animated: Bool) {  // sayfa açıldığında  gösterilir ilk
        print("viewWillAppear")         //kullanıcı sayfayı görmeden  çağırılır
    }
    
    override func viewDidAppear(_ animated: Bool) {  //animasyon ,API, core data, veri çekme işlemleri burada kullanılır    //kullanıcı sayfayı gördükten sonra çağırılır
        print("viewDidAppear")
    }
    
    override func viewWillDisappear(_ animated: Bool) { //sayfadan çıkılırken gösterilir ilk
        print("viewWillDisappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {  //animasyon ,API, core data, veri çekme işlemleri burada kullanılır çıkarken 2. sayfadan
        print("viewDidDisappear")
    }
    
    @IBAction func checkButton(_ sender: Any) {
        getPassword = usersText.text!
        performSegue(withIdentifier: "toSecondVC", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toSecondVC" {
            
            let destinationVC = segue.destination as! ViewController2
            destinationVC.password = getPassword
        }
    }

}

