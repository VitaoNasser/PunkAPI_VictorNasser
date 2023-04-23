//
//  PunkAPIBeerCollectionViewCellViewModel.swift
//  PunkAPI_VictorNasser
//
//  Created by Victor Nasser on 23/04/23.
//

import Foundation

final class PunkAPIBeerCollectionViewCellViewModel {
    public let beerName: String
    public let beerFirstBrewedText: String?
    private let beerImageUrl: URL?
    
    //  MARK: - Init
    
    init(
        beerName: String,
        beerFirstBrewedText: String?,
        beerImageUrl: URL?
    ) {
        self.beerName = beerName
        self.beerFirstBrewedText = beerFirstBrewedText
        self.beerImageUrl = beerImageUrl
    }
    
    public func fetchImage(completion: @escaping (Result<Data, Error>) -> Void) {
        // TODO: Abstract to Image Manager
        guard let url = beerImageUrl else {
            completion(.failure(URLError(.badURL)))
            return
        }
        
        let request = URLRequest(url: url)
        let task = URLSession.shared.dataTask(with: request) { data, _, error in
            guard let data = data, error == nil else {
                completion(.failure(error ?? URLError(.badServerResponse)))
                return
            }
            completion(.success(data))
        }
        task.resume()
    }
    
}
