//
//  SplashScreen.swift
//  Recipe-AI
//
//  Created by Nikk Bhateja on 20/07/26.
//

import SwiftUI

struct SplashScreen: View {
    @EnvironmentObject var appRouter: AppRouter
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            
            VStack(spacing: 0) {
                Spacer()
                
                Image(.chef)
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(16)
                    .padding(.horizontal)
                
                PlusJkartaSansText(title: Constants.quickAndEasyRecipes,
                                   fontWeight: .bold,
                                   fontSize: 24,
                                   foregroundColor: .white,
                                   lineLimit: 2)
                
                Spacer()
                
                FrauncesText(title: Constants.developedBy,
                                   fontWeight: .softSemiBold,
                                   fontSize: 16,
                                   foregroundColor: .white)
            }
        }
        .onAppear {
            Task {
                // Delay for ~0.3 seconds before navigating
                try? await Task.sleep(for: .milliseconds(300))
                appRouter.push(.home)
            }
        }
    }
}

#Preview {
    SplashScreen()
        .environmentObject(AppRouter())
}
