//
//  WelcomeView.swift
//  Trackizer
//
//  Created by OnnoRokom on 13/8/23.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        ZStack{
            Image("welcome_screen")
                .resizable()
                .scaledToFill()
                .frame(width: .screenWidth,height: .screenHeight)
            
            VStack{
                Spacer()
                Text("Congue malesuada in ac justo, a tristique\nleo massa. Arcu leo leo urna risus.")
                    .multilineTextAlignment(.center)
                    .font(.customfont(.regular, fontSize: 14))
                    .padding(.horizontal,20)
                    .foregroundColor(.white)
                    .padding(.bottom,30)
                
            }
        }.ignoresSafeArea()
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
