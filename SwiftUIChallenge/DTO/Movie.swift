//
//  Movie.swift
//  SwiftUIChallenge
//
//  Created by Zorin Dmitrii on 08.04.2024.
//

import Foundation

struct Movie: Identifiable, Decodable, Hashable {
    
    let id: UUID
    let title: String
    let year: String
    let genre: String
    let description: String
    let thumbURL: String
}
