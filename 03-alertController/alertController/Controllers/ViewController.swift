//
//  ViewController.swift
//  alertController
//
//  Created by Burak Aydın on 16.08.2023.
//

import UIKit

class ViewController: UIViewController
{

    // E-posta giriş alanı
    // Email input field
    @IBOutlet weak var emailTextField: UITextField!

    // Şifre giriş alanı
    // Password input field
    @IBOutlet weak var passwordTextField: UITextField!

    // Şifre tekrar giriş alanı
    // Confirm password input field
    @IBOutlet weak var password2TextField: UITextField!

    // Görünüm yüklendiğinde çağrılan fonksiyon
    // Function called when the view is loaded
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }

    // Kullanıcı kayıt ol butonuna bastığında gerekli kontrolleri yapar ve uygun mesajı gösterir.
    // Checks user input when the sign-up button is pressed and shows the appropriate message.
    @IBAction func signUpButton(_ sender: Any)
    {
        // E-posta alanı boşsa uyarı göster
        // Show an alert if the email field is empty
        if (emailTextField.text == "")
        {
            presentAlert(
                title: "Warning!",
                message: "Email not entered",
                preferredStyle: .alert,
                defaultButtonTittle: "Okey",
                defaultButtonStyle: .default)
        }
        // Şifre alanı boşsa uyarı göster
        // Show an alert if the password field is empty
        else if (passwordTextField.text == "")
        {
            presentAlert(
                title: "Warning!",
                message: "Password not entered",
                preferredStyle: .alert,
                defaultButtonTittle: "Okey",
                defaultButtonStyle: .default)
        }
        // Şifreler uyuşmuyorsa uyarı göster
        // Show an alert if passwords do not match
        else if (passwordTextField.text != password2TextField.text)
        {
            presentAlert(
                title: "Warning!",
                message: "Passwords do not match",
                preferredStyle: .alert,
                defaultButtonTittle: "Okey",
                defaultButtonStyle: .default)
        }
        // Tüm kontroller geçerse başarı mesajı göster
        // Show a success message if all validations pass
        else
        {
            presentAlert(
                title: "Congratulations!",
                message: "Your account has been created.",
                preferredStyle: .alert,
                defaultButtonTittle: "Okey",
                defaultButtonStyle: .default)
        }
    }

    // Kullanıcıya hata veya bilgilendirme mesajı göstermek için kullanılan genel amaçlı uyarı fonksiyonu.
    // A general-purpose alert function used to show error or information messages to the user.
    func presentAlert (
        title : String?,
        message : String?,
        preferredStyle:UIAlertController.Style,
        defaultButtonTittle : String,
        defaultButtonStyle : UIAlertAction.Style?,
        defaultButtonHandler : ((UIAlertAction)  -> Void)? = nil)
    {
        // Uyarı mesajı oluştur
        // Create an alert message
        let alertController = UIAlertController(
            title: title,
            message: message,
            preferredStyle: preferredStyle)

        // Uyarıya buton ekle
        // Add a button to the alert
        let defaultButton = UIAlertAction(
            title: defaultButtonTittle,
            style: defaultButtonStyle ?? .default,
            handler: defaultButtonHandler)

        alertController.addAction(defaultButton)

        // Uyarıyı ekrana göster
        // Display the alert on screen
        present(alertController, animated: true)
    }
}
