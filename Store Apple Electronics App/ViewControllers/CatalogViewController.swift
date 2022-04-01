//
//  CatalogViewController.swift
//  Store Apple Electronics App
//
//  Created by Тимур on 29.03.2022.
//

import UIKit

class CatalogViewController: UIViewController {
    
    //MARK: - IBOutlets
    
    @IBOutlet weak var phoneImageView: UIImageView!
    @IBOutlet weak var tabletImageView: UIImageView!
    @IBOutlet weak var notebookImageView: UIImageView!
    
    @IBOutlet weak var phonePriceLabel: UILabel!
    @IBOutlet weak var tabletPriceLabel: UILabel!
    @IBOutlet weak var notebookPriceLabel: UILabel!
    
    //MARK: - Properties
    
    let iPhones = Device.getIphone()
    let iPads = Device.getIpad()
    let macbooks = Device.getMacBook()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addPrice(to: phonePriceLabel, of: iPhones)
        addPrice(to: tabletPriceLabel, of: iPads)
        addPrice(to: notebookPriceLabel, of: macbooks)
        
        addImage(to: phoneImageView, of: iPhones)
        addImage(to: tabletImageView, of: iPads)
        addImage(to: notebookImageView, of: macbooks)
    }
    
    //MARK: - IBActions
    
    @IBAction func moreButtonPressed(_ sender: UIButton) {
        switch sender.tag {
        case 1:
            performSegue(withIdentifier: "CatalogSegue", sender: iPhones)
        case 2:
            performSegue(withIdentifier: "CatalogSegue", sender: iPads)
        default:
            performSegue(withIdentifier: "CatalogSegue", sender: macbooks)
        }
    }
    
    //MARK: - Prepare for segue
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let devicesTVC = segue.destination as? DevicesTableViewController else { return }
        devicesTVC.devices = sender as? [Device]
    }
    
    //MARK: - private funcs
    
    private func addPrice(to label: UILabel, of devices: [Device]) {
        var prices = [Int]()
        for device in devices {
            prices.append(device.price)
        }
        prices = prices.sorted(by: <)
        label.text = "от \(prices.first ?? 0)$"
    }
    
    private func addImage(to imageView: UIImageView, of devices: [Device]) {
        imageView.image = UIImage(named: devices.randomElement()?.image ?? "icloud.slash")
    }

}
