//
//  InfiniteWeekView.swift
//  Trackizer
//
//  Created by Md. Al-Amin on 21/8/23.
//

import SwiftUI

struct InfiniteWeekView: View {
    @EnvironmentObject var weekStore: WeekStore



    var body: some View {
        GeometryReader { geometry in
            NavigationStack {
                ZStack {
                    VStack {
                        WeeklyHeaderView()
                            
                        WeeksTabView() { week in
                            WeekView(week: week)
                        }
                        .frame(height: 100, alignment: .top)
                        
                    }
                    
                }
            }
        }
    }
}

struct InfinityTabPageWrapperView_Previews: PreviewProvider {
    static var previews: some View {
        InfiniteWeekView()
            .environmentObject(WeekStore())
    }
}
