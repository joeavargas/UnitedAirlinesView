//
//  MainView.swift
//  UnitedAirlinesView
//
//  Created by Joe Vargas on 4/6/22.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            Text("HomeView")
                .font(.system(size: 30, weight: .bold, design: .rounded))
                .tabItem{
                    Image(systemName: "house.fill")
                    Text("Home")
                }
            
            Text("BookFlightView")
                .font(.system(size: 30, weight: .bold, design: .rounded))
                .tabItem{
                    Image(systemName: "airplane")
                    Text("Book Flight")
                }
            
            MyUnitedView()
                .tabItem{
                    Image(systemName: "person")
                    Text("My United")
                }
            
            Text("FlightStatusView")
                .font(.system(size: 30, weight: .bold, design: .rounded))
                .tabItem{
                    Image(systemName: "clock")
                    Text("Flight Status")
                }
            
            Text("MoreView")
                .font(.system(size: 30, weight: .bold, design: .rounded))
                .tabItem{
                    Image(systemName: "ellipsis")
                    Text("More")
                }
        }
        .ignoresSafeArea()
        .accentColor(.black)
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
