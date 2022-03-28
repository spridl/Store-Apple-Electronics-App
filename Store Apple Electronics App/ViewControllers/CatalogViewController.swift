//
//  CatalogViewController.swift
//  Store Apple Electronics App
//
//  Created by Тимур on 29.03.2022.
//

import UIKit

class CatalogViewController: UIViewController {
    @IBOutlet weak var phoneImageView: UIImageView!
    @IBOutlet weak var tabletImageView: UIImageView!
    @IBOutlet weak var notebookImageView: UIImageView!
    
    @IBOutlet weak var phonePriceLabel: UILabel!
    @IBOutlet weak var tabletPriceLabel: UILabel!
    @IBOutlet weak var notebookPriceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func moreButtonPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "CatalogSegue", sender: nil)
    }
    

}
