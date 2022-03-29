//
//  ProfileViewController.swift
//  Store Apple Electronics App
//
//  Created by Тимур on 29.03.2022.
//

import UIKit

protocol LoginViewControllerDelegate {
    func setPerson(for name: String, and surname: String)
}

class ProfileViewController: UIViewController {

    // MARK: - IB Outlets
    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var fullNameLabel: UILabel!
    @IBOutlet weak var birthdayButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func birthDayButtonPressed() {
    }

}

// MARK: - LoginViewControllerDelegate
extension ProfileViewController: LoginViewControllerDelegate {
    func setPerson(for name: String, and surname: String) {
        fullNameLabel.text = "\(name) \(surname)"
    }
    
    
}
