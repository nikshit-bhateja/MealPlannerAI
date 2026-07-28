//
//  MealPlannerAI.swift
//  MealPlannerAI
//
//  Created by Nikk Bhateja on 20/07/26.
//

import SwiftUI

@main
struct MealPlannerAIApp: App {
    @StateObject private var appRouter = AppRouter()
    
    var body: some Scene {
        WindowGroup {
            NavigationStack(path: $appRouter.path) {
                InitialContentView()
            }
            .environmentObject(appRouter)
        }
    }
}

struct InitialContentView: View {
    @EnvironmentObject var appRouter: AppRouter
    
    var body: some View {
        SplashScreen()
            .navigationDestination(for: AppRoutes.self) { route in
                route.destination()
            }
    }
}
