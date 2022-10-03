//
//  TemperatureCell.swift
//  CollectionView_SF
//
//  Created by Иван Тарасенко on 02.10.2022.
//

import UIKit

final class TemperatureCell: UICollectionViewCell {

    static var identifier: String {
        return String(describing: self)
    }

    @IBOutlet weak var tempImageView: UIImageView!

    func setTemperatureImage(string: String) {
        tempImageView.image = UIImage(named: string)
    }
}
