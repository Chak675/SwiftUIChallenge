//
//  Coordinator.swift
//  SwiftUIChallenge
//
//  Created by Zorin Dmitrii on 09.04.2024.
//

import SwiftUI
import Observation

protocol Coordinator: AnyObject {
    
    var path: NavigationPath { get set }
    
    func push<Item: Hashable>(_ item: Item)
    func pop()
    func popToRoot()
}

@Observable
final class MainCoordinator: Coordinator {
    
    var path = NavigationPath()
    
    func push<Item: Hashable>(_ item: Item) {
        path.append(item)
    }
    
    func pop() {
        path.removeLast()
    }
    
    func popToRoot() {
        path.removeLast(path.count)
    }
}
