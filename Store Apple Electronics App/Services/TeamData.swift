//
//  TeamData.swift
//  Store Apple Electronics App
//
//  Created by Тимур on 01.04.2022.
//

import Foundation

class TeamData {
    static let shared = TeamData()
    let names = ["Тимур", "Дмитрий", "Насим", "Александра", "Константин"]
    let surnames = ["Горяев", "Кнауэр", "Нозиров", "Илюшникова", "Константинов"]
    let photos = ["timur", "dima", "nas", "sasha", "kostya"]
    
    private init() {}
}
