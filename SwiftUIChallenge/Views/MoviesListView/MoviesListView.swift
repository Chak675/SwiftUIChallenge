//
//  MoviesListView.swift
//  SwiftUIChallenge
//
//  Created by Zorin Dmitrii on 09.04.2024.
//

import SwiftUI

struct MoviesListView: View {
    
    let movies: [Movie]
    
    @Environment(MainCoordinator.self) private var coordinator: MainCoordinator
    
    var body: some View {
        List(movies) { movie in
            Button {
                coordinator.push(movie)
            } label: {
                HStack {
                    Image(systemName: "movieclapper.fill")
                    Text(movie.title)
                    Spacer()
                    Text("\(movie.year) г.")
                    Image(systemName: "chevron.right")
                }
            }
        }
        .navigationTitle("Фильмы")
    }
}

#Preview {
    MoviesListView(movies: [])
    .environment(MainCoordinator())
}
