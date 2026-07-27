//
//  Loader.swift
//  Recipe-AI
//
//  Created by Nikk Bhateja on 20/07/26.
//

import SwiftUI
import Lottie

struct LottieLoaderView: View {
    let fileName: LottieAnimationEnum
    var size: CGFloat = 120
    var loopMode: LottieLoopMode = .loop

    var body: some View {
        LottieView(animation: .named(fileName.rawValue))
            .playing(loopMode: loopMode)
            .frame(width: size, height: size)
    }
}

#Preview {
    LottieLoaderView(fileName: .AI)
}


