//
//  Coordinator.swift
//  SwiftUIChallenge
//
//  Created by Zorin Dmitrii on 09.04.2024.
//

import SwiftUI

enum Page: String {
   case contentView, detailView
    
//    var id: String {
//        self.rawValue
//    }
}

class Coordinator: ObservableObject {
    
    @Published var path = NavigationPath()
//    @Published var sheet: Sheet?
//    @Published var fullScreenCover: FullScreenCover?
    
    func push(_ page: Page) {
        path.append(page)
    }
    
    
    func pop() {
        path.removeLast()
    }
    
    func popToRoot() {
        path.removeLast(path.count)
    }
    
    @ViewBuilder
    func build(page: Page) -> some View {
        switch page {
            case .contentView:
                ContentView()
            case .detailView:
                DetailView()
        }
    }
}
