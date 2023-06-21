//
//  UserBioViewController.swift
//  LogInApp
//
//  Created by Бийбол Зулпукаров on 21/6/23.
//

import UIKit

class UserBioViewController: UIViewController {

    @IBOutlet var userBioTextView: UITextView!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "\(user.person.fullName) bio"
        userBioTextView.text = user.person.bio
    }

}
