//
//  SmileCell.swift
//  CollectionView_SF
//
//  Created by Иван Тарасенко on 02.10.2022.
//

import UIKit

class SmileCell: UICollectionViewCell {

    static var identifier: String {
        return String(describing: self)
    }
    
    @IBOutlet weak var smileImagView: UIImageView!

}
