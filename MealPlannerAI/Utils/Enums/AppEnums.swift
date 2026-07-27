//
//  AppEnums.swift
//  Recipe-AI
//
//  Created by Nikk Bhateja on 20/07/26.
//

import SwiftUI

//MARK: TabBar
enum TabBarEnum {
    case home
    case savedRecipes
    case notifications
    case profile
    
    var selectedIcon: String {
        switch self {
        case .home:
            return "house"
        case .savedRecipes:
            return "star.circle.fill"
        case .notifications:
            return "bell.fill"
        case .profile:
            return "person.circle.fill"
        }
    }
    
    var unselectedIcon: String{
        switch self {
        case .home:
            return "house"
        case .savedRecipes:
            return "star.hexagon"
        case .notifications:
            return "bell"
        case .profile:
            return "person.circle"
        }
    }
}

//MARK: Lottie Animations
enum LottieAnimationEnum : String {
    case AI = "AIloader"
    case foodPrepare = "Prepare Food"
    case foodCarousel = "Food Carousel"
}


