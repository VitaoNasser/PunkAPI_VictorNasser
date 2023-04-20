//
//  ViewController.swift
//  PunkAPI_VictorNasser
//
//  Created by Victor Nasser on 11/04/23.
//

import UIKit

/// Controller to show and search for beers
final class PunkAPIViewController: UIViewController {

    private let topTitle: UILabel = {
        let lable = UILabel()
        lable.text = "PUNK API"
        lable.font = .boldSystemFont(ofSize: 16)
        lable.textAlignment = .center
        lable.textColor = .black
        return lable
    }()
    
    private let beerListView = BeerListView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        setupView()
    }
    
    private func setupView() {
        view.addSubview(topTitle)
        view.addSubview(beerListView)
        NSLayoutConstraint.activate([
            beerListView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            beerListView.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor),
            beerListView.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor),
            beerListView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        ])
    }
}

