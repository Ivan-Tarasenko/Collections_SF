//
//  DetaileViewController.swift
//  CollectionView_SF
//
//  Created by Иван Тарасенко on 02.10.2022.
//

import UIKit

class DetaileViewController: UIViewController {

    @IBOutlet weak var detaileImage: UIImageView!

    var imageName: String!

    override func viewDidLoad() {
        super.viewDidLoad()

        detaileImage.image = UIImage(named: imageName)
    }

    @IBAction func closePressed(_ sender: UIButton) {
        dismiss(animated: true)
    }
}
