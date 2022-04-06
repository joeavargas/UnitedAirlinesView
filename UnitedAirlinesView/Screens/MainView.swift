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
            
            // MARK: Home
            NavigationView {
                Text("HomeView")
                    .font(.system(size: 30, weight: .bold, design: .rounded))
                    .navigationBarTitle("United", displayMode: .inline)
                    .navigationBarColor(.blue)
            }
            
            .tabItem{
                Image(systemName: "house.fill")
                Text("Home")
            }
            
            // MARK: Book Flight
            NavigationView {
                Text("BookFlightView")
                    .font(.system(size: 30, weight: .bold, design: .rounded))
                    .navigationBarTitle("Book", displayMode: .inline)
                    .navigationBarColor(.blue)
            }
            .tabItem{
                Image(systemName: "airplane")
                Text("Book Flight")
            }
            
            // MARK: MyUnitedView
            NavigationView {
                MyUnitedView()
                    .navigationBarTitle("My United", displayMode: .inline)
                    .navigationBarColor(.blue)
                    
            }
            .tabItem{
                Image(systemName: "person")
                Text("My United")
            }
            
            // MARK: FlightStatusView
            NavigationView {
                Text("FlightStatusView")
                    .font(.system(size: 30, weight: .bold, design: .rounded))
                    .navigationBarTitle("Search for flight", displayMode: .inline)
                    .navigationBarColor(.blue)
            }
            .tabItem{
                Image(systemName: "clock")
                Text("Flight Status")
            }
            
            // MARK: MoreView
            NavigationView {
                Text("MoreView")
                    .font(.system(size: 30, weight: .bold, design: .rounded))
                    .navigationBarTitle("More", displayMode: .inline)
                    .navigationBarColor(.blue)
            }
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

