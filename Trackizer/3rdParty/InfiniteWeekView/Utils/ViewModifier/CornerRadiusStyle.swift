//
//  CornerRadiusStyle.swift
//  Trackizer
//
//  Created by Md. Al-Amin on 21/8/23.
//

import SwiftUI

struct CornerRadiusStyle: ViewModifier {
    var radius: CGFloat
    var corners: UIRectCorner

    func body(content: Content) -> some View {
        content
            .clipShape(CornerRadiusShape(radius: radius, corners: corners))
    }
}
