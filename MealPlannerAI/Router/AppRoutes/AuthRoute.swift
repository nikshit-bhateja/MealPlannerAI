//
//  AuthRoute.swift
//  MealPlannerAI
//
//  Created by Nikk Bhateja on 20/07/26.
//

import SwiftUI

enum AuthRoute: RouteIdentifiable {
    case splash
    case login
    case signup
    case forgotPassword
    
    @ViewBuilder
    func destination() -> some View {
        switch self {
        case .splash: SplashScreen()
        default: EmptyView()
        }
    }
    
    var key: String {
        switch self {
        case .splash: return "auth.splash"
        case .login: return "auth.login"
        case .signup: return "auth.signup"
        case .forgotPassword: return "auth.forgotPassword"
        }
    }
}
