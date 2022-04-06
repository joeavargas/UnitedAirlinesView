//
//  MyUnitedView.swift
//  UnitedAirlinesView
//
//  Created by Joe Vargas on 4/6/22.
//

import SwiftUI

struct MyUnitedView: View {
    var body: some View {
        // MARK: - Header with profile image, salutation and profile/settings link
        HStack {
            Image(systemName: "person")
                .resizable()
                .scaledToFill()
                .frame(width: 50, height: 50)
                .background(Color.white)
                .foregroundColor(.blue)
                .clipShape(Circle())
                .padding()
            
            VStack(alignment: .leading, spacing: 8) {
                Text("Hello, John")
                    .font(.system(size: 22))
                    .fontWeight(.medium)
                Text("View profile and settings >")
                    .foregroundColor(.blue)
            }
            Spacer()
        }
        .frame(height: 130)
        .background(Color.white)
        
        // MARK: - Card view section
        
        // MARK: - Upcoming trip section
        
        // MARK: - Do you have a known traveler number section
        
        // MARK: - Find everything ok?
    }
}

struct MyUnitedView_Previews: PreviewProvider {
    static var previews: some View {
        MyUnitedView()
    }
}
