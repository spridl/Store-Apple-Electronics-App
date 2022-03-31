//
//  Device.swift
//  Store Apple Electronics App
//
//   Created by Nasim Nozirov on 28.03.2022.
//

import Foundation

struct Device {
    
    let name: String
    let price: Int
    let descriptio: String
    let image: String
    
    static func getIphone() -> [Device] {
        
        var devices: [Device] = []
        
        let iphones = DataManager.shared.iPhone
        let priceForIphones = DataManager.shared.priceForIphones
        let descriptionOfIphones = DataManager.shared.descriptionOfIphones
        let iphoneImages = DataManager.shared.iphoneImages
        
        let iterationCount = min(
            iphones.count,
            priceForIphones.count,
            descriptionOfIphones.count,
            iphoneImages.count
        )
        
        for index in 0..<iterationCount {
            let device = Device(
                name: iphones[index],
                price: priceForIphones[index],
                descriptio: descriptionOfIphones[index],
                image:iphoneImages[index]
            )
            devices.append(device)
        }
        return devices
    }
    
    static func getIpad() -> [Device] {
        
        var devices: [Device] = []
        
        let ipads = DataManager.shared.iPad
        let priceForIpads = DataManager.shared.priceForIpads
        let descriptionOfIpads = DataManager.shared.descriptionOfIpads
        let ipadImages = DataManager.shared.ipadImages
        
        let iterationCount = min(
            ipads.count,
            priceForIpads.count,
            descriptionOfIpads.count,
            ipadImages.count
        )
        
        for index in 0..<iterationCount {
            let device = Device(
                name: ipads[index],
                price: priceForIpads[index],
                descriptio: descriptionOfIpads[index],
                image: ipadImages[index]
            )
            devices.append(device)
        }
        return devices
    }
    
    static func getMacBook() -> [Device] {
        
        var devices: [Device] = []
        
        let macBooks = DataManager.shared.macBook
        let priceForMacBooks = DataManager.shared.priceForMacBooks
        let descriptionOfMacBooks = DataManager.shared.descriptionOfMacBooks
        let macBookImages = DataManager.shared.macBookImages
        
        let iterationCount = min(
            macBooks.count,
            priceForMacBooks.count,
            descriptionOfMacBooks.count,
            macBookImages.count
        )
        
        for index in 0..<iterationCount {
            let device = Device(
                name: macBooks[index],
                price: priceForMacBooks[index],
                descriptio: descriptionOfMacBooks[index],
                image: macBookImages[index]
            )
            devices.append(device)
        }
        return devices
    }
}
