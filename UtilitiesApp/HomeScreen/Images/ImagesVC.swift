//
//  ImagesVC.swift
//  UtilitiesApp
//
//  Created by Antonio - Raul RICHARD on 11.05.2022.
//

import UIKit

class ImagesVC: UIViewController {
    @IBOutlet weak var collectionView:UICollectionView!

    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.register(UINib(nibName: "ImagesCollectionViewCell", bundle: Bundle.main), forCellWithReuseIdentifier: "ImagesCollectionViewCell")
    }
    @IBAction func goBack(_ sender: UIButton?){
        navigationController?.viewControllers = [HomeScreenVC()]
    }
    
    
}

extension ImagesVC:UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ImagesCollectionViewCell", for: indexPath)
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 100
    }
    
}
