//
//  WelcomeViewController.swift
//  LogInApp
//
//  Created by Бийбол Зулпукаров on 5/6/23.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    @IBOutlet var welcomeLabel: UILabel!
    
    var welcome: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.text = welcome
    }
}
