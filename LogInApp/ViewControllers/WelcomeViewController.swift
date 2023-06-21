//
//  WelcomeViewController.swift
//  LogInApp
//
//  Created by Бийбол Зулпукаров on 5/6/23.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    @IBOutlet var welcomeLabel: UILabel!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.text = "Welcome, \(user.person.fullName)!"
    }
}
