//
//  LoginScreen.swift
//  MealPlannerAI
//
//  Created by Nikk Bhateja on 28/07/26.
//

import SwiftUI

struct LoginScreen: View {
    @State private var viewModel = AuthViewModel()
    
    var body: some View {
        AppBackgroundView {
            Text("Hello, World!")
        }
    }
}

#Preview {
    LoginScreen()
}
