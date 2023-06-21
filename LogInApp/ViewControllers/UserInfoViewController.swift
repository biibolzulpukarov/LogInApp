//
//  UserInfoViewController.swift
//  LogInApp
//
//  Created by Бийбол Зулпукаров on 21/6/23.
//

import UIKit

class UserInfoViewController: UIViewController {

    @IBOutlet var photoImage: UIImageView!
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var surnameLabel: UILabel!
    @IBOutlet var universityLabel: UILabel!
    @IBOutlet var departmentLabel: UILabel!
    @IBOutlet var semesterLabel: UILabel!
    
    var user: User!

    override func viewDidLoad() {
        super.viewDidLoad()
        photoImage.image = UIImage(named: user.person.photo)
        title = user.person.fullName
        nameLabel.text = user.person.name
        surnameLabel.text = user.person.surname
        universityLabel.text = user.person.university.title
        departmentLabel.text = user.person.university.department.rawValue
        semesterLabel.text = user.person.university.semester.rawValue
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let imageVC = segue.destination as? UserBioViewController else { return }
        imageVC.user = user
    }
    
}
