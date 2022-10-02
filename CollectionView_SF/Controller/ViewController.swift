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

    private let tempDataSource = TemperatureDataSource()
    private let tempDelegate = TemperatureDelegate()
    private let smileDataSource = SmileDataSource()
    private let smileDelegate = SmileDelegate()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setDelegate()
        setDatasource()

    }

    func setDelegate() {
        temperatureCollection.delegate = tempDelegate
        smileCollection.delegate = smileDelegate
    }

    func setDatasource() {
        temperatureCollection.dataSource = tempDataSource
        smileCollection.dataSource = smileDataSource
    }

}

