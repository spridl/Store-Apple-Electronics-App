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
    @IBOutlet weak var aboutUs: UIButton!
    @IBOutlet weak var logOut: UIButton!
    
    //MARK: - Properties
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        aboutUs.layer.cornerRadius = aboutUs.frame.height / 4
        logOut.layer.cornerRadius = logOut.frame.height / 4
        
        profileImageView.image = UIImage(named: person.photo)
        fullNameLabel.text = person.fullName
    }
}

