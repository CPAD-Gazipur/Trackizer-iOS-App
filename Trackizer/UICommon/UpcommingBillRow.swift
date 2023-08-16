//
//  UpcommingBillRow.swift
//  Trackizer
//
//  Created by Md. Al-Amin on 16/8/23.
//

import SwiftUI

struct UpcommingBillRow: View {
    
    @State var subscription: SubscriptionModel = SubscriptionModel(dict: [
        "name": "Spotify",
        "icon": "spotify_logo",
        "price": "5.99"
     ])
    
    var body: some View {
        HStack{
            
            ZStack{
                
                VStack{
                    
                    Text("JUN")
                        .font(.customfont(.medium, fontSize: 10))
                        .foregroundColor(.gray30)
                    
                    Text("20")
                        .font(.customfont(.semibold, fontSize: 14))
                        .foregroundColor(.white)
                    
                }
            }
            .frame(width: 40, height: 40)
            .background(Color.gray60.opacity(0.2))
            .overlay{
                RoundedRectangle(cornerRadius: 12)
                    .stroke( Color.gray70, lineWidth: 1)
            }
            .cornerRadius(12)
            
            Text(subscription.name)
                .font(.customfont(.semibold, fontSize: 14))
                .foregroundColor(.white)
            
            Spacer()
            
            Text("$\(subscription.price)")
                .font(.customfont(.semibold, fontSize: 14))
                .foregroundColor(.white)
            
        }
        .padding(15)
        .frame(minWidth: 0,maxWidth: .infinity,minHeight:60,maxHeight:60)
        .background(Color.gray60.opacity(0.2))
        .overlay{
            RoundedRectangle(cornerRadius: 12)
                .stroke( Color.gray70, lineWidth: 1)
        }
        .cornerRadius(12)
    }
}

struct UpcommingBillRow_Previews: PreviewProvider {
    static var previews: some View {
        UpcommingBillRow()
    }
}
