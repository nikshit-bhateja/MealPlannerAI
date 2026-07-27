//
//  HomeScreen.swift
//  Recipe-AI
//
//  Created by Nikk Bhateja on 20/07/26.
//

import SwiftUI

struct HomeScreen: View {
    var body: some View {
        ZStack {
            
        }
        .toolbar {
            ToolbarItem(placement: .principal) {
                FrauncesText(title: Constants.home,
                             fontWeight: .bold,
                             fontSize: 24,
                             foregroundColor: .black)
            }
        }
        .navigationBarBackButtonHidden()
    }
}

#Preview {
    NavigationView {
        HomeScreen()
    }
}
