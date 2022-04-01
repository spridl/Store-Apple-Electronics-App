//
//  AboutUsViewController.swift
//  Store Apple Electronics App
//
//  Created by Тимур on 29.03.2022.
//

import UIKit

class AboutUsViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    let teamPersons = Person.getPerson()

    @IBOutlet var collView: UICollectionView!

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        teamPersons.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionCell
        cell.backgroundColor = .white
        cell.imgCell.layer.cornerRadius = cell.imgCell.frame.size.height / 2
        
        if indexPath.item == 0 {
            cell.lblCell.text = "TeamLid: \(teamPersons[indexPath.item].fullName). \n И его команда:"
        } else {
            cell.lblCell.text = "Миньон \(indexPath.item): \(teamPersons[indexPath.item].fullName)"
        }
        cell.imgCell.image = UIImage(named: teamPersons[indexPath.item].photo)
        
        return cell
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        CGSize(width: 200, height: 250)
    }

}
