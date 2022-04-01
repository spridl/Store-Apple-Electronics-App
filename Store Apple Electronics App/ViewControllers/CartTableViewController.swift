//
//  CartTableViewController.swift
//  Store Apple Electronics App
//
//  Created by Тимур on 29.03.2022.
//

import UIKit

class CartTableViewController: UITableViewController {
    
    // MARK: - Properties
    
    var cart = CartManager.shared

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //MARK: - IBActions
    
    @IBAction func buyButtonPressed(_ sender: UIBarButtonItem) {
        setBuyAlert()
    }
    
    // MARK: - Table view data source


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       cart.devices.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cartCell", for: indexPath)
        var content = cell.defaultContentConfiguration()
        let size = view.frame.height / 10
        
        content.text = cart.devices[indexPath.row].name
        content.secondaryText = "Стоимость \(cart.devices[indexPath.row].price)"
        content.image = UIImage(named: cart.devices[indexPath.row].image)
        content.imageProperties.maximumSize = CGSize(width: size, height: size)
        
        cell.contentConfiguration = content
        return cell
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            cart.devices.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }

}

extension CartTableViewController {
    private func setBuyAlert() {
        var sum = 0
        
        for device in cart.devices {
            sum += device.price
        }
        
        let alert = UIAlertController(
            title: "Оформить доставку?",
            message: "на сумму \(sum)",
            preferredStyle: .alert)
        let actionYes = UIAlertAction(title: "Да", style: .default) {  _ in
            self.cart.devices = []
            self.doneAlert()
            self.tableView.reloadData()
        }
        let actionNo = UIAlertAction(title: "Нет", style: .default)
        
        alert.addAction(actionYes)
        alert.addAction(actionNo)
        
        present(alert, animated: true)
        
        
    }
    
    private func doneAlert() {
        let alert = UIAlertController(
            title: "Поздравляем!!!",
            message: "Ваш заказ ожидает вас в под дверью",
            preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default)
        alert.addAction(action)
        present(alert, animated: true)
    }
}
