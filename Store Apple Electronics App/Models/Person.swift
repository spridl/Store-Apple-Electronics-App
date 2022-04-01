//
//  Person.swift
//  Store Apple Electronics App
//
//  Created by Тимур on 29.03.2022.
//

struct Person {
    
    let name: String
    let surname: String
    let photo: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    static func getPerson() -> [Person] {
        
        var persons = [Person]()
        
        let names = TeamData.shared.names
        let surnames = TeamData.shared.surnames
        let photos = TeamData.shared.photos
        
        let iterationCount = min(
            names.count,
            surnames.count,
            photos.count
        )
        
        for index in 0..<iterationCount {
            let person = Person(
                name: names[index],
                surname: surnames[index],
                photo: photos[index]
            )
            persons.append(person)
        }
        
        return persons
    }
        
}

