//
//  View+Extension.swift
//  Trackizer
//
//  Created by Md. Al-Amin on 21/8/23.
//

import Foundation

import SwiftUI

extension View {
    func cornerRadius(radius: CGFloat, corners: UIRectCorner) -> some View {
        ModifiedContent(content: self, modifier: CornerRadiusStyle(radius: radius, corners: corners))
    
    }
}
