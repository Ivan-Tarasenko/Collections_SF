//
//  SmileCell.swift
//  CollectionView_SF
//
//  Created by Иван Тарасенко on 02.10.2022.
//

import UIKit

final class SmileCell: UICollectionViewCell {

    static var identifier: String {
        return String(describing: self)
    }
    
    @IBOutlet weak var smileImagView: UIImageView!

    func setSmileImage(string: String) {
        smileImagView.image = UIImage(named: string)
    }
}
