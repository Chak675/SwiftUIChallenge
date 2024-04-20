//
//  MoviesRequest.swift
//  SwiftUIChallenge
//
//  Created by Zorin Dmitrii on 09.04.2024.
//

import Foundation

final class MoviesRequest {
 
    static let shared = MoviesRequest()
    
    private init() {}
    
    func fetch(complition: @escaping (Result<[Movie], Error>) -> Void) {
        guard let path = Bundle.main.path(forResource: "Movies", ofType: "json") else {
            return complition(.failure(CustomError.invalidPath))
        }
        
        do {
            let data = try Data(contentsOf: URL(fileURLWithPath: path))
            let movies = try JSONDecoder().decode([Movie].self, from: data)
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
                complition(.success(movies))
            }
        } catch {
            guard let error = error as? DecodingError else {
                return complition(.failure(error))
            }
            
            switch error {
                case .typeMismatch(_, _), .dataCorrupted(_):
                    complition(.failure(CustomError.json))
                case .valueNotFound(_, _):
                    complition(.failure(CustomError.value))
                case .keyNotFound(_, _):
                    complition(.failure(CustomError.key))
                @unknown default:
                    complition(.failure(error))
            }
        }
    }
}
