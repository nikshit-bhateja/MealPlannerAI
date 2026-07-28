//
//  AppRoutes.swift
//  MealPlannerAI
//
//  Created by Nikk Bhateja on 28/07/26.
//

import SwiftUI

enum AppRoutes: RouteIdentifiable {
    
    case auth(AuthRoute)
    
    @ViewBuilder
    func destination() -> some View {
        switch self {
        case .auth(let authRoute): authRoute.destination()
        }
    }
    
    var key: String {
        switch self {
        case .auth(let route): return route.key
        }
    }
}
