//
//  Font+Ext.swift
//  Recipe-AI
//
//  Created by Nikk Bhateja on 20/07/26.
//

import SwiftUI

extension Font {
    static func frauncesFont(_ font: FrauncesFont, size: CGFloat) -> Font {
        return .custom(font.rawValue, size: size)
    }
    static func plusJakartaSansProFont(_ font: PlusJakartaSansFont, size: CGFloat) -> Font {
        return .custom(font.rawValue, size: size)
    }
}

