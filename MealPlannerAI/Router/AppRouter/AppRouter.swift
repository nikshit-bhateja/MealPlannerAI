//
//  AppRouter.swift
//  Recipe-AI
//
//  Created by Nikk Bhateja on 20/07/26.
//

internal import Combine
import SwiftUI

class AppRouter: NSObject, ObservableObject {
    @Published var path:[Routes] = []
    
    // Push a new screen
    func push(_ route: Routes, animated: Bool = true) {
        
        if animated {
            path.append(route)
        } else {
            UIView.setAnimationsEnabled(false)
            path.append(route)
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5, execute: {
                UIView.setAnimationsEnabled(true)
            })
        }
        
    }
    
    // Pop back one screen
    func pop(animated: Bool = true) {
        
        if animated {
            if !path.isEmpty { path.removeLast() }
        } else {
            UIView.setAnimationsEnabled(false)
            if !path.isEmpty { path.removeLast() }
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5, execute: {
                UIView.setAnimationsEnabled(true)
            })
        }
        
    }
    // Pop back to a specific screen
    func popTo(_ route: Routes) {
        if let index = path.firstIndex(of: route) {
            path = Array(path.prefix(through: index))
        }
        else {
            popToRoot()
        }
    }
    
    // Pop back to root
    func popToRoot() {
        
        guard let firstPath = path.first else { return }
        path.removeAll()
        path = [firstPath]
        
    }
    
    // Set a new root screen
    func setRoot(_ route: Routes) {
        path = [route]
    }
}

