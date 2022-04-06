//
//  MyUnitedView.swift
//  UnitedAirlinesView
//
//  Created by Joe Vargas on 4/6/22.
//

import SwiftUI

struct MyUnitedView: View {
    var body: some View {
        ScrollView(.vertical) {
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
            VStack(spacing: 10) {
                        // MARK: - Row 1
                        HStack {
                            // MARK: Mileage Plus
                            VStack {
                                Image(systemName: "bookmark.fill")
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 20, height: 20)
                                Text("MileagePlus")
                            }
                            .frame(width: 120, height: 100)
                            .background(.white)
                            .overlay{
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color(.sRGB, red: 150/255, green: 150/255, blue: 150/255,
                                                  opacity: 0.1), lineWidth: 0.9)
                                    .shadow(radius: 5)
                            }
                            
                            // MARK: Trips
                            VStack(spacing: 15) {
                                Image(systemName: "airplane")
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 20, height: 20)
                                Text("MileagePlus")
                            }
                            .frame(width: 120, height: 100)
                            .background(.white)
                            .overlay{
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color(.sRGB, red: 150/255, green: 150/255, blue: 150/255,
                                                  opacity: 0.1), lineWidth: 0.9)
                                    .shadow(radius: 5)
                            }
                            
                            // MARK: Wallet
                            VStack(spacing: 15) {
                                Image(systemName: "wallet.pass")
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 20, height: 20)
                                Text("Wallet")
                            }
                            .frame(width: 120, height: 100)
                            .background(.white)
                            .overlay{
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color(.sRGB, red: 150/255, green: 150/255, blue: 150/255,
                                                  opacity: 0.1), lineWidth: 0.9)
                                    .shadow(radius: 5)
                            }
                        }//: HStack
                        
                        // MARK: - Row 2
                        HStack {
                            // MARK: Mileage Plus
                            VStack(alignment: .center) {
                                Image(systemName: "list.number")
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 20, height: 20)
                                Text("Travel-Ready Center")
                                    .lineLimit(2)
                            }
                            .frame(width: 120, height: 100)
                            .background(.white)
                            .overlay{
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color(.sRGB, red: 150/255, green: 150/255, blue: 150/255,
                                                  opacity: 0.1), lineWidth: 0.9)
                                    .shadow(radius: 5)
                            }
                            
                            // MARK: Trips
                            VStack(spacing: 15) {
                                Image(systemName: "list.bullet.rectangle")
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 20, height: 20)
                                Text("Receipts")
                            }
                            .frame(width: 120, height: 100)
                            .background(.white)
                            .overlay{
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color(.sRGB, red: 150/255, green: 150/255, blue: 150/255,
                                                  opacity: 0.1), lineWidth: 0.9)
                                    .shadow(radius: 5)
                            }
                            
                            // MARK: Wallet
                            VStack(spacing: 15) {
                                Image(systemName: "wallet.pass")
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 20, height: 20)
                                Text("Wallet")
                            }
                            .frame(width: 120, height: 100)
                            .background(.white)
                            .overlay{
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color(.sRGB, red: 150/255, green: 150/255, blue: 150/255,
                                                  opacity: 0.1), lineWidth: 0.9)
                                    .shadow(radius: 5)
                            }
                        }//: HStack
            }
            
            // MARK: - Upcoming trip section
            
            // MARK: - Do you have a known traveler number section
            
            // MARK: - Find everything ok?
        }
    }
}

struct MyUnitedView_Previews: PreviewProvider {
    static var previews: some View {
        MyUnitedView()
    }
}
