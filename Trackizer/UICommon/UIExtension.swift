//
//  UIExtension.swift
//  Trackizer
//
//  Created by Md. Al-Amin on 13/8/23.
//

import SwiftUI

enum Inter: String {
    case regular = "Inter-Regular.ttf"
    case medium = "Inter-Medium.ttf"
    case semibold = "Inter-SemiBold.ttf"
    case bold = "Inter-Bold.ttf"
}

extension Font {
    
    static func custom_font(_ font: Inter, fontSize: CGFloat) -> Font {
        custom(font.rawValue,size: fontSize)
    }
}


extension CGFloat {
    
    static var screenWidth: Double {
        return UIScreen.main.bounds.size.width
    }
    
    static var screenHeight: Double {
        return UIScreen.main.bounds.size.height
    }
    
    static func widthPer(per: Double)-> Double {
        return screenWidth * per
    }
    
    static func heightPer(per: Double)-> Double {
        return screenHeight * per
    }
}
