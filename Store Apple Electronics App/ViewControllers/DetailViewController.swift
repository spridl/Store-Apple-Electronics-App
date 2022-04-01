//
//  DetailViewController.swift
//  Store Apple Electronics App
//
//  Created by Тимур on 29.03.2022.
//

import UIKit

class DetailViewController: UIViewController {
    @IBOutlet weak var detailImageView: UIImageView!
    @IBOutlet weak var deviceNameLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    
    @IBOutlet weak var aboutDevice: UILabel!
    @IBOutlet weak var buyButton: UIButton!
    
    var product: Device!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func buyButtonPressed(_ sender: Any) {
    }
    
}

//@IBOutlet var productImageView: UIImageView!
//@IBOutlet var productTitleLabel: UILabel!
//@IBOutlet var cartButton: UIButton!
//@IBOutlet var stepperTF: UITextField!
//
//var product: Device!
//
//override func viewDidLoad() {
//    super.viewDidLoad()
//    productImageView.image = UIImage(named: product.name)
//    productTitleLabel.text = product.title
//    cartButton.backgroundColor = .red
//    cartButton.layer.cornerRadius = 10
//    stepperTF.text = "1"
//}
//
//@IBAction func cartButtonAction() {
//    cartButton.backgroundColor = .gray
//    cartButton.setTitle("Товар в корзине", for: .normal)
//}
//@IBAction func stepperAction(sender: UIStepper) {
//        self.stepperTF.text = Int(sender.value).description
//    }
//
//}
