//
//  BudgetRow.swift
//  Trackizer
//
//  Created by Md. Al-Amin on 17/8/23.
//

import SwiftUI

struct BudgetRow: View {
 
    @State var budget: BudgetModel = BudgetModel(dict: [
        "name": "Auto & Transport",
        "icon": "auto_&_transport",
        "spend_amount": "25.99",
        "total_amount": "400",
        "left_amount": "250.01",
        "color": Color.secondaryG ])
 
    var body: some View {
        VStack{
            
            HStack{
                
                Image(budget.icon)
                    .resizable()
                    .frame(width: 30, height: 30)
                    .foregroundColor(.gray40)
                
                VStack{
                    
                    Text(budget.name)
                        .font(.customfont(.semibold, fontSize: 14))
                        .foregroundColor(.white)
                        .frame(minWidth: 0,maxWidth: .infinity,alignment: .leading)
                    
                    Text("$\(budget.left_amount) left to spend")
                        .font(.customfont(.semibold, fontSize: 12))
                        .foregroundColor(.gray30)
                        .frame(minWidth: 0,maxWidth: .infinity,alignment: .leading)
                }
                
                
                VStack(alignment: .trailing){
                    
                    Text("$\(budget.total_amount)")
                        .font(.customfont(.semibold, fontSize: 14))
                        .foregroundColor(.white)
                        .frame(alignment: .trailing)
                    
                    Text("of $\(budget.left_amount)")
                        .font(.customfont(.semibold, fontSize: 12))
                        .foregroundColor(.gray30)
                        .frame(alignment: .trailing)
                }
            }
            
            ProgressView(value: budget.percentage,total: 1)
                .tint(budget.color)

            
        }
        .padding(15)
        .frame(minWidth: 0,maxWidth: .infinity)
        .background(Color.gray60.opacity(0.2))
        .overlay{
            RoundedRectangle(cornerRadius: 12)
                .stroke( Color.gray70, lineWidth: 1)
        }
        .cornerRadius(12)
    }

}

struct BudgetRow_Previews: PreviewProvider {
    static var previews: some View {
        BudgetRow()
    }
}
