//
//  AuthViewModel.swift
//  MealPlannerAI
//
//  Created by Nikk Bhateja on 28/07/26.
//

import SwiftUI
import Observation

@Observable
class AuthViewModel {
    //MARK: PROPERTIES
    /// Booleans
    var isLoading: Bool = false
    var isLoggingIn: Bool = true
    
    /// Text fields
    var emailTextField: String = ""
    var passwordTextField: String = ""
    var fullName: String = ""
    
    ///Enums
    var authenticationType: AuthenticateUserEnum = .login
    
}

//MARK: Login
extension AuthViewModel {
    
}


//MARK: Sign up
extension AuthViewModel {
    
}
