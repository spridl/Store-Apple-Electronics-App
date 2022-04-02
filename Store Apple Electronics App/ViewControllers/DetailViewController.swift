//
//  DetailViewController.swift
//  Store Apple Electronics App
//
//  Created by Тимур on 29.03.2022.
//

import UIKit

class DetailViewController: UIViewController {
    
    //MARK: - IBOutlets
    
    @IBOutlet weak var detailImageView: UIImageView!
    @IBOutlet weak var deviceNameLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    
    @IBOutlet weak var aboutDevice: UILabel!
    @IBOutlet weak var buyButton: UIButton!
    
    //MARK: - Properties
    var product: Device!
    
    //MARK: - viewDidLoad
    
    override func viewDidLoad() {
        super.viewDidLoad()
        detailImageView.image = UIImage(named: product.image)
        deviceNameLabel.text = product.name
        priceLabel.text = "\(product.price)$"
        aboutDevice.text = product.description
        buyButton.layer.cornerRadius = buyButton.frame.height / 4
    }
    
    //MARK: - IBActions

    @IBAction func buyButtonPressed() {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        guard let cartVC = storyboard.instantiateViewController(identifier: "CartViewController") as? CartTableViewController else { return }
        let cart = CartManager.shared
        
        cart.devices.append(product)
        cartVC.devices = cart.devices
        
        buyButton.backgroundColor = .gray
        buyButton.setTitle("В корзине", for: .normal)
        buyButton.isEnabled.toggle()
    }
}
