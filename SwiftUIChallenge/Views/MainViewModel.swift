//
//  MainViewModel.swift
//  SwiftUIChallenge
//
//  Created by Zorin Dmitrii on 09.04.2024.
//

import Observation

@Observable
final class MainViewModel {
    
    var coordinator = MainCoordinator()
    var movies = [Movie]()
    
    private let request = MoviesRequest.shared
    
    func fetch() {
        request.fetch { [weak self] result in
            switch result {
                case .success(let movies): self?.movies = movies
                case .failure(let error): print(error.localizedDescription)
            }
        }
    }
}
