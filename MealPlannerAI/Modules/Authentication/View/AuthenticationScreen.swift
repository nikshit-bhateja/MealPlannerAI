//
//  LoginScreen.swift
//  MealPlannerAI
//
//  Created by Nikk Bhateja on 28/07/26.
//

import SwiftUI

enum AuthenticateUserEnum {
    case login
    case signup
}

struct LoginScreen: View {
    @State private var viewModel = AuthViewModel()
    
    var body: some View {
        AppBackgroundView {
            Text(viewModel.authenticationType == .login ? "Hello Loggin!" : "Hello Signup!")
        }
    }
}

#Preview {
    LoginScreen()
}
