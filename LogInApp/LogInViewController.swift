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
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.welcome = "Welcome, \(usernameTF.text ?? "")!"
    }
    
    @IBAction func logInButtonPressed() {
        
    }
    
    @IBAction func forgotUserNameButton() {
        showAlert(withTitle: "Oops!", andMessage: "Your name is User")
    }
    
    @IBAction func forgotPasswordButton() {
        showAlert(withTitle: "Oops!", andMessage: "Your password is password")
    }
    
    
    // Метод для скрытия клавиатуры тапом по экрану
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
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

