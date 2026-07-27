//
//  TabBarScreen.swift
//  Recipe-AI
//
//  Created by Nikk Bhateja on 27/07/26.
//

import SwiftUI

struct TabBarScreen: View {
    @State var tab: TabBarEnum
    @EnvironmentObject var appRouter: AppRouter
    var body: some View {
        TabView(selection: $tab) {
            HomeScreen()
                .tag(TabBarEnum.home)
                .tabItem {
                    TabBarButton(selectedIcon: TabBarEnum.home.selectedIcon,
                                 unselectedIcon: TabBarEnum.home.unselectedIcon,
                                 title: "",
                                 isSelected: tab == .home)
                }
            
            SplashScreen()
                .tag(TabBarEnum.savedRecipes)
                .tabItem {
                    TabBarButton(selectedIcon: TabBarEnum.savedRecipes.selectedIcon,
                                 unselectedIcon: TabBarEnum.savedRecipes.unselectedIcon,
                                 title: "",
                                 isSelected: tab == .savedRecipes)
                }
            
            SplashScreen()
                .tag(TabBarEnum.notifications)
                .tabItem {
                    TabBarButton(selectedIcon: TabBarEnum.notifications.selectedIcon,
                                 unselectedIcon: TabBarEnum.notifications.unselectedIcon,
                                 title: "",
                                 isSelected: tab == .notifications)
                }
            
            SplashScreen()
                .tag(TabBarEnum.profile)
                .tabItem {
                    TabBarButton(selectedIcon: TabBarEnum.profile.selectedIcon,
                                 unselectedIcon: TabBarEnum.profile.unselectedIcon,
                                 title: "",
                                 isSelected: tab == .profile)
                }
        }
    }
}


//MARK: Tab Bar Button
struct TabBarButton: View {
    let selectedIcon: String
    let unselectedIcon: String
    let title: String
    let isSelected: Bool
    
    var body: some View {
        
        VStack(spacing: 4) {
            Image(systemName: isSelected ? selectedIcon : unselectedIcon)
            
            PlusJkartaSansText(title: title,
                               fontWeight: .regular,
                               fontSize: 10, foregroundColor: isSelected ? .blue : .gray)
        }
        .foregroundColor(isSelected ? .blue : .gray)
        .frame(maxWidth: .infinity)
        
    }
    
}

#Preview {
    NavigationView {
        TabBarScreen(tab: .home)
            .environmentObject(AppRouter())
    }
}
