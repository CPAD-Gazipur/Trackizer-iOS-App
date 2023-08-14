//
//  SignInView.swift
//  Trackizer
//
//  Created by Md. Al-Amin on 14/8/23.
//

import SwiftUI

struct SignInView: View {
    
    @State var textEmail: String = ""
    @State var textPassword: String = ""
    @State var isRemember: Bool = false
    @State var showSignUp: Bool = false
    
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
                    
                    Button{
                        isRemember = !isRemember
                    } label: {
                        HStack{
                            
                            Image(systemName: isRemember ? "checkmark.square" : "square")
                                .resizable()
                                .frame(width: 20, height: 20)
                            
                            Text("Remember Password")
                                .multilineTextAlignment(.center)
                                .font(.customfont(.regular, fontSize: 14))
                        }
                    }
                    .foregroundColor(.gray50)
                    
                    Spacer()
                    
                    Button{
                        
                    } label: {
                        Text("Forget Password?")
                            .multilineTextAlignment(.center)
                            .font(.customfont(.regular, fontSize: 14))
                    }
                    .foregroundColor(.gray50)
                }
                .padding(.horizontal, 20)
                .padding(.bottom, 15)
                
                
                
                PrimaryButton(title: "Sign In",onPressed: {})
                  
                
                Spacer()
                
                Text("If you don't have an account yet?")
                    .multilineTextAlignment(.center)
                    .font(.customfont(.regular, fontSize: 14))
                    .padding(.horizontal,20)
                    .foregroundColor(.white)
                    .padding(.bottom,20)
                
                SecondaryButton(title: "Sign Up", onPressed: {
                    showSignUp.toggle()
                })
                    .background(NavigationLink(destination: SignUpView(), isActive: $showSignUp, label: {
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

struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
    }
}
