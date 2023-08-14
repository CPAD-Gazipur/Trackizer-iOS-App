//
//  SignUpView.swift
//  Trackizer
//
//  Created by Md. Al-Amin on 14/8/23.
//

import SwiftUI

struct SignUpView: View {
    
    @State var textEmail: String = ""
    @State var textPassword: String = ""
    @State var showSignIn: Bool = false
    
    var body: some View {
        ZStack{

            
            VStack{
                
                Image("app_logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: .widthPer(per: 0.5))
                    .padding(.top,.topInsets + 8)
                
                Spacer()
                
                
                RoundedTextField(title: "Email Address", text: $textEmail,keyboardType: .emailAddress)
                .padding(.horizontal,20)
                .padding(.bottom,15)
                
                RoundedTextField(title: "Password", text: $textPassword,isPassword: true)
                .padding(.horizontal,20)
                .padding(.bottom,20)
                
                HStack{
                    
                    Rectangle()
                        .frame(minWidth: 0,maxWidth: .infinity, minHeight: 5, maxHeight: 5)
                        .padding(.horizontal,1)
                    
                    Rectangle()
                        .frame(minWidth: 0,maxWidth: .infinity, minHeight: 5, maxHeight: 5)
                        .padding(.horizontal,1)
                    
                    Rectangle()
                        .frame(minWidth: 0,maxWidth: .infinity, minHeight: 5, maxHeight: 5)
                        .padding(.horizontal,1)
                    
                    Rectangle()
                        .frame(minWidth: 0,maxWidth: .infinity, minHeight: 5, maxHeight: 5)
                        .padding(.horizontal,1)
                    
                }
                .padding(.horizontal,20)
                .foregroundColor(.gray70)
                .padding(.bottom,20)
                
                Text("Use 8 or more characters with a mix of letters,\nnumbers & symbols.")
                    .multilineTextAlignment(.leading)
                    .font(.customfont(.regular, fontSize: 12))
                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal,20)
                    .foregroundColor(.gray50)
                    .padding(.bottom,20)
                
                PrimaryButton(title: "Get Started, it's free!",onPressed: {})
                    .padding(.bottom,15)
                
                Spacer()
                
                Text("Do you have already an account?")
                    .multilineTextAlignment(.center)
                    .font(.customfont(.regular, fontSize: 14))
                    .padding(.horizontal,20)
                    .foregroundColor(.white)
                    .padding(.bottom,20)
                
                SecondaryButton(title: "Sign In", onPressed: {
                    showSignIn.toggle()
                })
                    .background(NavigationLink(destination: SignInView(), isActive: $showSignIn, label: {
                            EmptyView()
                    }))
                    .padding(.bottom,.bottomInsets)

            }
        }
        .navigationTitle("")
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
        .ignoresSafeArea()
        .background(Color.gray80)
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
