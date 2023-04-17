//
//  ViewController.swift
//  PunkAPI_VictorNasser
//
//  Created by Victor Nasser on 11/04/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        
        let request = PunkAPIRequest(
            endpoint: .beers,
            queryParameters: [
                URLQueryItem(name: "brewed_before", value: "11-2012"),
                URLQueryItem(name: "abv_gt", value: "6")
            ]
        )
        print(request.url)
        
        PunkAPIService.shared.execute(request, expecting: PunkBeer.self) { result in
            
        }
    }
}

