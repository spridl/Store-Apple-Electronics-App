//
//  ProfileViewController.swift
//  Store Apple Electronics App
//
//  Created by Тимур on 29.03.2022.
//

import UIKit


class ProfileViewController: UIViewController {

    // MARK: - IB Outlets
    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var fullNameLabel: UILabel!
    @IBOutlet weak var birthdayButton: UIButton!
    
    var fullName: String!
//    var Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        fullNameLabel.text = fullName
        
//        profileImageView.image = UIImage(named: person.title)

    }
    
    @IBAction func birthDayButtonPressed() {
    }
}

