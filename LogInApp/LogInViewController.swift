//
//  ViewController.swift
//  LogInApp
//
//  Created by Бийбол Зулпукаров on 4/6/23.
//

import UIKit

final class LogInViewController: UIViewController {
    
    @IBOutlet var usernameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.welcome = "Welcome, \(usernameTF.text ?? "")!😃"
    }
    
    @IBAction func logInButtonPressed() {
        if usernameTF.text != "User" || passwordTF.text != "password" {
            showAlert(withTitle: "Invalid login or password", andMessage: "Please, enter correct login and password")
        }
    }
    
    @IBAction func forgotUserNameButton() {
        showAlert(withTitle: "Oops!", andMessage: "Your name is User😉")
    }
    
    @IBAction func forgotPasswordButton() {
        showAlert(withTitle: "Oops!", andMessage: "Your password is password🙃")
    }
    
    // IBAction for "Log Out" button in the WelcomeViewController
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        usernameTF.text = ""
        passwordTF.text = ""
    }
    
    
    // Метод для скрытия клавиатуры тапом по экрану
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        self.view.endEditing(true)
    }
    
}

// MARK: - UIAlertController
extension LogInViewController {
    private func showAlert(withTitle title: String, andMessage message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default)
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}

