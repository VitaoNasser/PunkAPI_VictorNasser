//
//  PunkAPIService.swift
//  PunkAPI_VictorNasser
//
//  Created by Victor Nasser on 14/04/23.
//

import Foundation

/// Primary API service object to get PunkAPI data
final class PunkAPIService {
    
    /// Shared singleton instance
    static let shared = PunkAPIService()
    
    
    /// Privatized constructor
    private init() {}
    
    enum PunkAPIServiceError: Error {
        case failedToCreateRequest
        case failedToGetData
    }
    
    /// Send Punk API Call
    /// - Parameters:
    ///   - request: Request instance
    ///   - type: The type of object we expect to get back
    ///   - completion: Callback with data or error
    public func execute<T: Codable>(
        _ request: PunkAPIRequest,
        expecting type: T.Type,
        completion: @escaping (Result<T, Error>) -> Void
    ) {
        guard let urlRequest = self.request(from: request) else {
            completion(.failure(PunkAPIServiceError.failedToCreateRequest))
            return
        }
        
        let task = URLSession.shared.dataTask(with: urlRequest) { data, _, error in
            guard let data = data, error == nil else  {
                completion(.failure(error ?? PunkAPIServiceError.failedToGetData))
                return
            }
            
            // Decode response
            do {
                let json = try JSONSerialization.jsonObject(with: data)
                print(String(describing: json))
                //
            }
            catch {
                completion(.failure((error)))
            }
        }
        task.resume()
    }
    
    // MARK: - Private
    
    private func request(from punkAPIRequest: PunkAPIRequest) -> URLRequest? {
        guard let url = punkAPIRequest.url else {
            return nil
        }
        var request = URLRequest(url: url)
        request.httpMethod = punkAPIRequest.httpMethod
        return request
    }
}
