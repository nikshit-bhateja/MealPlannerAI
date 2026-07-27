//
//  AppText.swift
//  Recipe-AI
//
//  Created by Nikk Bhateja on 20/07/26.
//

import SwiftUI

struct FrauncesText: View {
    
    let title: String
    var fontWeight: FrauncesFont = .regular
    var fontSize: CGFloat = 14.0
    var foregroundColor: Color = .black
    var lineLimit: Int = 1
    var textAlignment: TextAlignment = .leading
    @ScaledMetric(relativeTo: .body) private var scaledSize: CGFloat = 1
    
    var body: some View {
        Text(title)
            .font(.frauncesFont(fontWeight, size: fontSize * scaledSize))
            .foregroundStyle(foregroundColor)
            .lineLimit(lineLimit == 0 ? nil : lineLimit)
            .multilineTextAlignment(textAlignment)

    }
}

//MARK: Plus Jakarta Sans
struct PlusJkartaSansText: View {
    
    let title: String
    var fontWeight: PlusJakartaSansFont = .regular
    var fontSize: CGFloat = 14.0
    var foregroundColor: Color = .black
    var lineLimit: Int = 1
    var textAlignment: TextAlignment = .leading
    @ScaledMetric(relativeTo: .body) private var scaledSize: CGFloat = 1
    
    var body: some View {
        Text(title)
            .font(.plusJakartaSansProFont(fontWeight, size: fontSize * scaledSize))
            .foregroundStyle(foregroundColor)
            .lineLimit(lineLimit == 0 ? nil : lineLimit)
            .multilineTextAlignment(textAlignment)

    }
}
