//
//  ViewController.swift
//  CollectionView_SF
//
//  Created by Иван Тарасенко on 02.10.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var temperatureCollection: UICollectionView!
    @IBOutlet weak var smileCollection: UICollectionView!

    private let model = Model()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setDelegate()
        setDatasource()
        setCollection()

    }

    func setDelegate() {
        temperatureCollection.delegate = self
        smileCollection.delegate = self
    }

    func setDatasource() {
        temperatureCollection.dataSource = self
        smileCollection.dataSource = self
    }

    func setCollection() {
        temperatureCollection.showsHorizontalScrollIndicator = false
        smileCollection.showsHorizontalScrollIndicator = false
    }
}

extension ViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == temperatureCollection {
            return model.tempImages.count
        } else {
            return model.smileImages.count
        }
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {

        if collectionView == temperatureCollection {

            guard let cell = collectionView.dequeueReusableCell(
                withReuseIdentifier: TemperatureCell.identifier,
                for: indexPath) as? TemperatureCell else { fatalError() }
            cell.setTemperatureImage(string: model.tempImages[indexPath.row])

            return cell
        } else {

            guard let cell = collectionView.dequeueReusableCell(
                withReuseIdentifier: SmileCell.identifier,
                for: indexPath) as? SmileCell else { fatalError() }
            cell.setSmileImage(string: model.smileImages[indexPath.row])

            return cell
        }
    }
}

extension ViewController: UICollectionViewDelegate {

     func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        guard let showVC = storyboard?.instantiateViewController(withIdentifier: "ShowVC") as? DetaileViewController else { return }

         if collectionView == temperatureCollection {
             showVC.imageName = model.tempImages[indexPath.row]
         } else {
             showVC.imageName = model.smileImages[indexPath.row]
         }

        showVC.modalPresentationStyle = .fullScreen
        self.show(showVC, sender: nil)
    }
}
