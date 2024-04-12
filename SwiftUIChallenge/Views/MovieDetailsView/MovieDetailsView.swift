//
//  MovieDetailsView.swift
//  SwiftUIChallenge
//
//  Created by Zorin Dmitrii on 09.04.2024.
//

import SwiftUI

struct MovieDetailsView: View {
    
    let movie: Movie
    
    @Environment(MainCoordinator.self) private var coordinator: MainCoordinator
    
    var body: some View {
        List {
            Section {
                Text(movie.description)
                
                Text("Год выпуска \(movie.year) г.")
            } header: {
                VStack(spacing: 16) {
                    Text(movie.title)
                        .font(.largeTitle)
                    
                    Text("\(movie.genre) • \(movie.year)")
                        .font(.callout)
                }
                .foregroundStyle(.black)
                .lineLimit(1)
                .minimumScaleFactor(0.3)
            }
        }
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarBackButtonHidden()
        .environment(MainCoordinator())
        .toolbar {
            ToolbarItem(placement: .topBarLeading) {
                Button {
                    coordinator.pop()
                } label: {
                    Image(systemName: "chevron.left")
                    
                    Text("Вернуться к списку")
                }
            }
        }
    }
}

#Preview {
    MovieDetailsView(movie: Movie(
        id: .init(),
        title: "",
        year: "1",
        genre: "",
        description: "",
        thumbURL: ""
    ))
    .environment(MainCoordinator())
}
