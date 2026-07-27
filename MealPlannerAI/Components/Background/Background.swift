//
//  Background.swift
//  MealPlannerAI
//
//  Created by Nikk Bhateja on 28/07/26.
//


import SwiftUI

struct AppBackgroundView<Content: View>: View {
    
    // MARK: - Properties
    var isScrollable: Bool
    var showsScrollIndicator: Bool
    var contentPadding: CGFloat
    let content: Content
    
    // MARK: - Initializer
    init(
        isScrollable: Bool = false,
        showsScrollIndicator: Bool = false,
        contentPadding: CGFloat = 16,
        @ViewBuilder content: () -> Content
    ) {
        self.isScrollable = isScrollable
        self.showsScrollIndicator = showsScrollIndicator
        self.contentPadding = contentPadding
        // Execute the closure to store the view
        self.content = content()
    }
    
    // MARK: - Body
    
    var body: some View {
        ZStack {
            Color.appBackground
            .ignoresSafeArea()
            if isScrollable {
                ScrollView(showsIndicators: showsScrollIndicator) {
                    VStack(spacing: 0) {
                        content
                    }
                    .padding(contentPadding)
                }
            } else {
                VStack(spacing: 0) {
                    content
                }
                .padding(contentPadding)
            }
        }
        .onTapGesture {
            UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
        }
    }
}

// MARK: - Preview Usage Example

#Preview {
    AppBackgroundView(isScrollable: true) {
        VStack(spacing: 24) {
            
            Image(systemName: "leaf.fill")
                .font(.system(size: 60))
                .foregroundColor(.green)
                .padding(.top, 40)
            
            Text("Meal Planner AI")
                .font(.largeTitle)
                .fontWeight(.bold)
            
            Text("This text, image, and button are injected securely into your highly reusable background wrapper.")
                .multilineTextAlignment(.center)
                .foregroundColor(.secondary)
            
            ForEach(0..<5) { index in
                RoundedRectangle(cornerRadius: 16)
                    .fill(Color(UIColor.tertiarySystemBackground))
                    .frame(height: 100)
                    .shadow(color: .black.opacity(0.05), radius: 5, x: 0, y: 2)
                    .overlay(Text("Content Block \(index + 1)").foregroundColor(.secondary))
            }
            
            Button(action: {
                print("Button tapped")
            }) {
                Text("Generate AI Recipe")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.green)
                    .cornerRadius(12)
            }
            .padding(.top, 20)
        }
    }
}


