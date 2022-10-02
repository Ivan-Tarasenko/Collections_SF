//
//  TemperatureDataSource.swift
//  CollectionView_SF
//
//  Created by Иван Тарасенко on 02.10.2022.
//

import UIKit

class TemperatureDataSource: NSObject, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(
            withReuseIdentifier: TemperatureCell.identifier,
            for: indexPath) as? TemperatureCell else { fatalError() }

        cell.backgroundColor = .systemBlue

        return cell
    }

}
