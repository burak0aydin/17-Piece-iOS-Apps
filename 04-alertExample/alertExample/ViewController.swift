//
//  ViewController.swift
//  alertExample
//
//  Created by Burak Aydın on 17.09.2023.
//
import UIKit

class ViewController: UIViewController
{
    // Label to display user input.
    // Kullanıcının girdiği metni göstermek için kullanılan etiket.
    @IBOutlet weak var textLabel: UILabel!

    // Function called when the view is loaded.
    // Görünüm yüklendiğinde çağrılan fonksiyon.
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }

    // Displays an alert with "Okey" and "Close" buttons.
    // "Okey" ve "Close" butonları içeren bir uyarı mesajı gösterir.
    @IBAction func alertButton(_ sender: Any)
    {
        let alertController = UIAlertController(title: "Title", message: "Message", preferredStyle: .alert)

        // "Okey" button action prints a message to the console.
        // "Okey" butonuna basıldığında konsola mesaj yazdırılır.
        let okeyAlert = UIAlertAction(title: "Okey", style: .default) { action in
            print("selected okey")
        }

        // "Close" button action prints a message to the console.
        // "Close" butonuna basıldığında konsola mesaj yazdırılır.
        let closeAlert = UIAlertAction(title: "Close", style: .destructive) { action in
            print("selected close")
        }

        // Adding buttons to the alert.
        // Butonları uyarıya ekler.
        alertController.addAction(okeyAlert)
        alertController.addAction(closeAlert)

        // Displays the alert on screen.
        // Uyarıyı ekrana gösterir.
        self.present(alertController, animated: true)
    }

    // Displays an action sheet with "Okey" and "Close" buttons.
    // "Okey" ve "Close" butonları içeren bir action sheet gösterir.
    @IBAction func actionSheetButton(_ sender: Any)
    {
        let alertController = UIAlertController(title: "Title", message: "Message", preferredStyle: .actionSheet)

        // "Okey" button action prints a message to the console.
        // "Okey" butonuna basıldığında konsola mesaj yazdırılır.
        let okeyAlert = UIAlertAction(title: "Okey", style: .cancel) { action in
            print("selected okey")
        }

        // "Close" button action prints a message to the console.
        // "Close" butonuna basıldığında konsola mesaj yazdırılır.
        let closeAlert = UIAlertAction(title: "Close", style: .destructive) { action in
            print("selected close")
        }

        // Adding buttons to the action sheet.
        // Butonları action sheet'e ekler.
        alertController.addAction(okeyAlert)
        alertController.addAction(closeAlert)

        // Displays the action sheet on screen.
        // Action sheet'i ekrana gösterir.
        self.present(alertController, animated: true)
    }

    // Displays an alert with a text field where the user can enter data.
    // Kullanıcının veri girebileceği bir metin alanı içeren bir uyarı gösterir.
    @IBAction func specialAlertButton(_ sender: Any)
    {
        let alertController = UIAlertController(title: "Title", message: "Message", preferredStyle: .alert)

        // Adds a text field inside the alert for user input.
        // Kullanıcı girişini almak için uyarıya bir metin alanı ekler.
        alertController.addTextField { UITextField in
            UITextField.placeholder = "Enter Data"  // Placeholder text
            UITextField.keyboardType = .default  // Sets the keyboard type
            UITextField.isSecureTextEntry = true  // Hides the entered text for security
        }

        // "Save" button stores the entered data in the label.
        // "Save" butonu girilen veriyi etikete kaydeder.
        let okeyAlert = UIAlertAction(title: "Save", style: .cancel) { action in
            let alertTextField = alertController.textFields![0] as UITextField
            if let receivedData = alertTextField.text {
                self.textLabel.text = receivedData
            }
        }

        // Adds the "Save" button to the alert.
        // "Save" butonunu uyarıya ekler.
        alertController.addAction(okeyAlert)

        // Displays the alert on screen.
        // Uyarıyı ekrana gösterir.
        self.present(alertController, animated: true)
    }
}

