//
//  Person.swift
//  Store Apple Electronics App
//
//  Created by Тимур on 29.03.2022.
//

struct Person {
    
    let name: String
    let surname: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    static func getPerson() {
        
    }
        
}

