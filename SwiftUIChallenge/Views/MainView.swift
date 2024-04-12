//
//  MainView.swift
//  SwiftUIChallenge
//
//  Created by Zorin Dmitrii on 08.04.2024.
//

import SwiftUI

struct MainView: View {
    
    @Bindable private var viewModel = MainViewModel()
    
    var body: some View {
        NavigationStack(path: $viewModel.coordinator.path) {
            MoviesListView(movies: viewModel.movies)
            .onAppear(perform: viewModel.fetch)
            .navigationDestination(for: Movie.self) { movie in
                MovieDetailsView(movie: movie)
            }
        }
        .environment(viewModel.coordinator)
    }
}

#Preview {
    MainView()
}
