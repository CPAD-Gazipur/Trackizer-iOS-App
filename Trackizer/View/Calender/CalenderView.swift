//
//  CalenderView.swift
//  Trackizer
//
//  Created by Md. Al-Amin on 19/8/23.
//

import SwiftUI

struct CalenderView: View {
    
    @State var subArray: [SubscriptionModel] = [
     SubscriptionModel(dict: [
        "name": "Spotify",
        "icon": "spotify_logo",
        "price": "5.99"
     ]),
     SubscriptionModel(dict: [
        "name": "YouTube Premium",
        "icon": "youtube_logo",
        "price": "18.99"
     ]),
     SubscriptionModel(dict: [
        "name": "Microsoft OneDrive",
        "icon": "onedrive_logo",
        "price": "29.99"
     ]),
     SubscriptionModel(dict: [
        "name": "NetFlix",
        "icon": "netflix_logo",
        "price": "15.00"
     ])
    ]
    
    let columns = [
        GridItem(.adaptive(minimum: 200)),
        GridItem(.adaptive(minimum: 200))
    ]
    
    var body: some View {
        ScrollView{
            
            ZStack(alignment: .top){
                
                Rectangle()
                    .foregroundColor(.gray70.opacity(0.5))
                    .frame(width: .screenWidth,height: .widthPer(per: 1.1))
                    .cornerRadius(25)
                
                VStack{
                    Text("Calender")
                        .font(.customfont(.regular, fontSize: 16))
                        .foregroundColor(.gray30)
                        .frame(minWidth: 0,maxWidth: .infinity,alignment: .center)
                        .padding(.horizontal,20)
                        .padding(.bottom,20)
                    
                    Text("Subs\nSchedule")
                        .font(.customfont(.bold, fontSize: 40))
                        .foregroundColor(.white)
                        .frame(minWidth: 0,maxWidth: .infinity,alignment: .leading)
                        .padding(.horizontal,20)
                        
                }
                .padding(.top,.topInsets)
                .padding(.bottom,20)
            }
            .frame(width: .screenWidth)
            
            VStack{
                
                HStack{
                    Text("January")
                        .font(.customfont(.bold, fontSize: 20))
                        .foregroundColor(.white)
                        .frame(minWidth: 0,maxWidth: .infinity,alignment: .leading)
                    
                    Text("$29.98")
                        .font(.customfont(.bold, fontSize: 20))
                        .foregroundColor(.white)
                }
                
                HStack{
                    Text("21.08.2023")
                        .font(.customfont(.medium, fontSize: 12))
                        .foregroundColor(.gray30)
                        .frame(minWidth: 0,maxWidth: .infinity,alignment: .leading)
                    
                    Text("in upcoming bills")
                        .font(.customfont(.medium, fontSize: 12))
                        .foregroundColor(.gray30)
                }
            }
            .padding(20)
            
            LazyVGrid(columns: columns, spacing: 8){
                
                ForEach(subArray) { subscription in
                    SubscriptionCell(subscription: subscription)
                }
            }
            .padding(.horizontal,20)
            .padding(.bottom,120)
            
        }
        .background(Color.grayC)
        .ignoresSafeArea()
    }
}

struct CalenderView_Previews: PreviewProvider {
    static var previews: some View {
        CalenderView()
    }
}
