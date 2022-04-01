//
//  DevicesTableViewController.swift
//  Store Apple Electronics App
//
//  Created by Тимур on 29.03.2022.
//

import UIKit

class DevicesTableViewController: UITableViewController {
    
    // MARK: - Properties
    
    var devices: [Device]!
    
    // MARK: - TableView

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return devices.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "DeviceCell", for: indexPath)
        var content = cell.defaultContentConfiguration()
        let size = view.frame.height / 5
        
        content.text = devices[indexPath.row].name
        content.secondaryText = "\(devices[indexPath.row].price)$"
        content.textProperties.font = UIFont(name: "Apple SD Gothic Neo", size: 15)!
        
        content.image = UIImage(named: devices[indexPath.row].image)
        content.imageProperties.maximumSize = CGSize(width: size, height: size)
        content.imageProperties.cornerRadius = tableView.rowHeight / 2
        
        cell.contentConfiguration = content
        
        return cell
    }
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let DetailVC = segue.destination as? DetailViewController else { return }
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        DetailVC.product = devices[indexPath.row]
    }
    
}
