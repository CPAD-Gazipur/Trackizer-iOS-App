//
//  ArcShape.swift
//  Trackizer
//
//  Created by Md. Al-Amin on 17/8/23.
//

import SwiftUI

struct ArcShape: Shape {
    
    var start: Double = 0
    var end: Double = 270
    var width: Double = 15
    
    func path(in rect: CGRect) -> Path {
        var p = Path()
        let startValue = (start + 135)
        
        p.addArc(center: CGPoint(x: rect.width / 2, y: rect.height / 2),
                 radius: rect.width / 2,
                 startAngle: .degrees(startValue.truncatingRemainder(dividingBy: 360)),
                 endAngle: .degrees((startValue + end).truncatingRemainder(dividingBy: 360)),
                 clockwise: false)
        
        return p.strokedPath(.init(lineWidth: width, lineCap: .round))
    }
    
}


struct ArcShape180: Shape {
    
    var start: Double = 0
    var end: Double = 180
    var width: Double = 15
    
    func path(in rect: CGRect) -> Path {
        var p = Path()
        let startValue = (start + 180)
        
        p.addArc(center: CGPoint(x: rect.width / 2, y: rect.height),
                 radius: rect.width / 2,
                 startAngle: .degrees(startValue.truncatingRemainder(dividingBy: 360)),
                 endAngle: .degrees((startValue + end).truncatingRemainder(dividingBy: 360)),
                 clockwise: false)
        
        return p.strokedPath(.init(lineWidth: width, lineCap: .round))
    }
    
}


