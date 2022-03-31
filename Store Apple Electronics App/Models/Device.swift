//
//  Device.swift
//  Store Apple Electronics App
//
//   Created by Nasim Nozirov on 28.03.2022.
//

import Foundation

struct Divice {
    
    let name: String
    let price: Int
    let descriptio: String
    let image: String
    
    static func getIphone() -> [Divice] {
        
        var divices: [Divice] = []
        
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
            let divice = Divice(
                name: iphones[index],
                price: priceForIphones[index],
                descriptio: descriptionOfIphones[index],
                image:iphoneImages[index]
            )
            divices.append(divice)
        }
        return divices
    }
    
    static func getIpad() -> [Divice] {
        
        var divices: [Divice] = []
        
        let ipads = DataManager.shared.iPad
        let priceForIpads = DataManager.shared.priceForIpads
        let descriptioOfIpads = DataManager.shared.descriptionOfIpads
        let ipadImages = DataManager.shared.ipadImages
        
        let iterationCount = min(
            ipads.count,
            priceForIpads.count,
            descriptioOfIpads.count,
            ipadImages.count
        )
        
        for index in 0..<iterationCount {
            let divice = Divice(
                name: ipads[index],
                price: priceForIpads[index],
                descriptio: descriptioOfIpads[index],
                image: ipadImages[index]
            )
            divices.append(divice)
        }
        return divices
    }
    
    static func getWatch() -> [Divice] {
        
        var divices: [Divice] = []
        
        let appleWatchs = DataManager.shared.appleWatch
        let priceForWatchs = DataManager.shared.priceForWatchs
        let descriptioOfWatchs = DataManager.shared.descriptionOfWatchs
        let watchImages = DataManager.shared.watchImages
        
        let iterationCount = min(
            appleWatchs.count,
            priceForWatchs.count,
            descriptioOfWatchs.count,
            watchImages.count
        )
        
        for index in 0..<iterationCount {
            let divice = Divice(
                name: appleWatchs[index],
                price: priceForWatchs[index],
                descriptio: descriptioOfWatchs[index],
                image: watchImages[index]
            )
            divices.append(divice)
        }
        return divices
    }
    
    static func getMacBooc() -> [Divice] {
        
        var divices: [Divice] = []
        
        let macBooks = DataManager.shared.macBook
        let priceForMacBooks = DataManager.shared.priceForMacBooks
        let descriptionOfMacBooks = DataManager.shared.descriptionOfMacBooks
        let macBoocImages = DataManager.shared.macBookImages
        
        let iterationCount = min(
            macBooks.count,
            priceForMacBooks.count,
            descriptionOfMacBooks.count,
            macBoocImages.count
        )
        
        for index in 0..<iterationCount {
            let divice = Divice(
                name: macBooks[index],
                price: priceForMacBooks[index],
                descriptio: descriptionOfMacBooks[index],
                image: macBoocImages[index]
            )
            divices.append(divice)
        }
        return divices
    }
}
