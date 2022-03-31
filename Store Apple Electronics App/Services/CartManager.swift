//
//  CartManager.swift
//  Store Apple Electronics App
//
//  Created by Тимур on 31.03.2022.
//

import Foundation

class CartManager {
    
    static let shared = CartManager()
    
    var devices: [Device] = []
    
    private init() {}
}
