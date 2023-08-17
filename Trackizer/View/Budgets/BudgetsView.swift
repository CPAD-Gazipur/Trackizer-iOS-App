//
//  BudgetsView.swift
//  Trackizer
//
//  Created by Md. Al-Amin on 17/8/23.
//

import SwiftUI

struct BudgetsView: View {
    
    @State var budgetArray: [BudgetModel] = [
            BudgetModel(dict: [
                "name": "Auto & Transport",
                "icon": "auto_&_transport",
                "spend_amount": "25.99",
                "total_amount": "400",
                "left_amount": "250.01",
                 "color": Color.secondaryG ] ),
            
            BudgetModel(dict: [
                "name": "Entertainment",
                "icon": "entertainment",
                "spend_amount": "50.99",
                "total_amount": "600",
                "left_amount": "300.01",
                 "color": Color.secondaryC ] ),
            
            BudgetModel(dict: [
                "name": "Security",
                 "icon": "security",
                 "spend_amount": "5.99",
                 "total_amount": "600",
                 "left_amount": "250.01",
                 "color": Color.primary10 ] )
        ]
    
    var body: some View {
        
        ScrollView{
            
            Button{
                
            } label: {
                Text("Your budgets are on tack 👍")
                    .font(.customfont(.semibold, fontSize: 14))
            }
            .foregroundColor(.white)
            .frame(minWidth: 0,maxWidth: .infinity,minHeight:64,maxHeight:64)
            .overlay{
                RoundedRectangle(cornerRadius: 12)
                    .stroke(Color.gray70, lineWidth: 1)
            }
            .cornerRadius(16)
            .padding(.top,80)
            .padding(.horizontal,20)
            
            
            LazyVStack{
                
                ForEach(budgetArray, id: \.id) { budget in
                    
                    BudgetRow(budget: budget)
                    
                }
            }
            .padding(.horizontal,20)
            
            
        }
        .background(Color.grayC)
        .ignoresSafeArea()
    }
}

struct BudgetsView_Previews: PreviewProvider {
    static var previews: some View {
        BudgetsView()
    }
}
