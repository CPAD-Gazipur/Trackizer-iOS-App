//
//  SecondaryButton.swift
//  Trackizer
//
//  Created by Md. Al-Amin on 14/8/23.
//

import SwiftUI

struct SecondaryButton: View {
    
    @State var title: String = "Title"
    var onPressed: (() -> ())?
    
    var body: some View {
        Button{
            onPressed?()
        } label: {
            ZStack{
                Image("secodry_btn")
                    .resizable()
                    .scaledToFit()
                    .padding(.horizontal,20)
                    .frame(width: .screenWidth,height: 48)
                
                Text(title)
                    .font(.customfont(.semibold, fontSize: 14))
                    .foregroundColor(.white)
            }
        }
        .foregroundColor(.white)
        .shadow(color: .secondaryC.opacity(0.3), radius: 5, y:3)
        
    }
}

struct SecondaryButton_Previews: PreviewProvider {
    static var previews: some View {
        SecondaryButton()
    }
}
