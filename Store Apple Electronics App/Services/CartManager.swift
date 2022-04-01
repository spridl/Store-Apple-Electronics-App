//
//  CartManager.swift
//  Store Apple Electronics App
//
//  Created by Тимур on 01.04.2022.
//

import Foundation

class CartManager {
    
    static let shared = CartManager()
    
    var devices: [Device] = []
    
    private init() {}
}
