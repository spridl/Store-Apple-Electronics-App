//
//  AboutUsViewController.swift
//  Store Apple Electronics App
//
//  Created by Тимур on 29.03.2022.
//

import UIKit

class AboutUsViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {

    @IBOutlet var collView: UICollectionView!

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        5
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionCell
        cell.backgroundColor = .white
        cell.imgCell.layer.cornerRadius = cell.imgCell.frame.size.height / 2

        switch indexPath.item {
        case 0:
            cell.imgCell.image = UIImage(named: "timur")
            cell.lblCell.text = "TeamLid: Тимур Горяев. \n И его команда:"
        case 1:
            cell.imgCell.image = UIImage(named: "dima")
            cell.lblCell.text = "Миньон 1: Дмитрий Кнауэр"
        case 2:
            cell.imgCell.image = UIImage(named: "nas")
            cell.lblCell.text = "Миньон 2: Насим Нозиров"
        case 3:
            cell.imgCell.image = UIImage(named: "sasha")
            cell.lblCell.text = "Миньонша 3: Александра Илюшникова"
        default:
            cell.imgCell.image = UIImage(named: "kostya")
            cell.lblCell.text = "Миньон 4: Константин Константинов"
        }
        return cell
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        CGSize(width: 200, height: 250)
    }

}
