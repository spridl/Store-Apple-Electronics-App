//
//  Device.swift
//  Store Apple Electronics App
//
//   Created by Nasim Nozirov on 28.03.2022.
//

import Foundation


struct Divice {
    
//    let iphone: String
    let Price: Int
    let descriptio: String
    let Image: String
    
    
    static func getStore() -> [Divice] {
        
        var divices: [Divice] = []
        
        let iphones = DataManager.shared.iPhone
        let iphonesPrice = DataManager.shared.iphonePrice
        let descriptioIphones = DataManager.shared.descriptionIPhone
        let iphonesImage = DataManager.shared.iphoneImage
        
        let iterationCount = min(
            iphones.count,
            iphonesPrice.count,
            descriptioIphones.count,
            iphonesImage.count)
        
        for index in 0..<iterationCount {
            let divice = Divice(
//                 iphone: iphones[index],
                Price: iphonesPrice[index],
                descriptio: descriptioIphones[index],
                Image: iphonesImage[index]
            )
            divices.append(divice)
        }
        
        return divices
    }
}
