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
    
    //MARK: - Properties
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        fullNameLabel.text = person.fullName
        
//        profileImageView.image = UIImage(named: person.title)

    }
    
    @IBAction func birthDayButtonPressed() {
    }
}

