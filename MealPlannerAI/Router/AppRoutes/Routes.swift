//
//  Route.swift
//  Recipe-AI
//
//  Created by Nikk Bhateja on 20/07/26.
//

import SwiftUI

enum Routes: RouteIdentifiable {
    case splash
    case tabBar
    case home
    case recipe
    
    @ViewBuilder
    func destination() -> some View {
        switch self {
        case .splash: SplashScreen()
        case .tabBar: EmptyView()
        case .home: HomeScreen()
        case .recipe: EmptyView()
        }
    }
    
    var key: String {
        switch self {
        case .splash: return "route.splash"
        case .tabBar: return "route.tabBar"
        case .home: return "route.home"
        case .recipe: return "route.recipe"
        }
    }
}
