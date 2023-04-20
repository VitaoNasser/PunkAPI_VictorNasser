//
//  BeerListViewViewModel.swift
//  PunkAPI_VictorNasser
//
//  Created by Victor Nasser on 19/04/23.
//

import UIKit

final class BeerListViewViewModel: NSObject {
    func fetchBeers() {
        let request = PunkAPIRequest(
            endpoint: .beers,
            queryParameters: [
                URLQueryItem(name: "brewed_before", value: "11-2012"),
                URLQueryItem(name: "abv_gt", value: "6")
            ]
        )
        print(request.url)
        
        PunkAPIService.shared.execute(request, expecting: PunkBeer.self) { result in
            switch result {
            case .success:
                break
            case .failure(let error):
                print(String(describing: error))
                
            }
        }
    }
}

extension BeerListViewViewModel: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 25
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
        cell.backgroundColor = .systemGreen
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let bounds = UIScreen.main.bounds
        let width = (bounds.width - 30)/2
        return CGSize(
            width: width,
            height: width * 1.5
        )
    }
}
