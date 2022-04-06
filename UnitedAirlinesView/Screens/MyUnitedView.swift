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
            VStack {
                // MARK: - Row 1
                VStack(spacing: 20) {
                    HStack(spacing: 20) {
                        CardView(image: "bookmark.fill", subject: "MileagePlus")
                        
                        CardView(image: "airplane", subject: "Trips")
                        
                        CardView(image: "wallet.pass", subject: "Wallet")

                    }//: HStack
                    
                    // MARK: - Row 2
                    HStack(spacing: 20) {
                        CardView(image: "list.number", subject: "Travel-Ready Center")
                        
                        CardView(image: "list.bullet.rectangle", subject: "Receipts")
                        
                        CardView(image: "airplane.circle", subject: "Travel credits")

                    }//: HStack
                }
            }
            
            // MARK: - Upcoming trip section
            
            VStack {
                HStack {
                    Image(systemName: "clock.fill")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 40, height: 40)
                    
                    Text("Upcoming trips")
                        .fontWeight(.medium)
                    Spacer()
                }
                .padding()
                
                // Horizontal line
                Divider()
                    .background(Color.black)
                    .padding(.horizontal)
                
                // You have no current trips text
                HStack {
                    Text("You have no current trips")
                        .fontWeight(.light)
                    Spacer()
                }
                .padding()
                
                // Book now chevron text
                HStack {
                    Text("Book now >")
                        .foregroundColor(.blue)
                    Spacer()
                }.padding()
                
                VStack(spacing: 14) {
                    // Horizontal line
                    Divider()
                        .background(Color.black)
                        .padding(.horizontal)
                    // View all trips text === chevron image
                    HStack {
                        Text("View all trips")
                        Spacer()
                        Image(systemName: "chevron.right")
                    }.padding(.horizontal)
                    
                    // Horizontal line
                    Divider()
                        .background(Color.black)
                        .padding([.horizontal, .bottom])
                }.padding(.top, 5)
                
                Divider().frame(width: UIScreen.main.bounds.width, height: 10).background(Color(UIColor.lightGray)).padding(.top, 20)
            }
            .background(Color.white)
            
            // MARK: - Do you have a known traveler number section
            VStack {
                HStack {
                    VStack {
                        VStack(alignment: .leading, spacing: 10) {
                            Text("Do you have a Known Traveler Number")
                                .fontWeight(.semibold)
                            
                            Text("Add your Known Traveler Number so that it's automatically applied for future flights.")
                                .font(.system(size: 14))
                            
                            HStack {
                                Image(systemName: "plus.circle.fill")
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 20, height: 20)
                                    .foregroundColor(.teal)
                                Text("Add Known Traveler Number")
                                    .foregroundColor(.teal)
                            }
                            .padding(.top)
                            
                            Text("Please note, any current reservations will need the number added seperately through the Reservation details page")
                                .font(.system(size: 11))
                                .fontWeight(.light)
                        }.padding(.horizontal)
                    }
                    .padding([.top, .bottom], 25)
                    Spacer()
                }
                Divider()
                    .frame(width: UIScreen.main.bounds.width, height: 10).background(Color(UIColor.lightGray))
                    .padding(.top, 20)
            }
            .background(Color.white)
            .padding([.top, .bottom])
            
            // MARK: - Find everything ok?
            VStack {
                HStack {
                    VStack {
                        VStack(alignment: .leading) {
                            VStack {
                                HStack {
                                    VStack(alignment: .leading) {
                                        VStack {
                                            Text("Find everything ok?")
                                                .font(.system(size: 20))
                                                .foregroundColor(.black)
                                        }
                                        
                                        Text("We want to help you find all your stuff and anything else you may need")
                                            .foregroundColor(.primary)
                                            .lineLimit(3)
                                        HStack {
                                            Text("We would love your feedback")
                                                .font(.caption)
                                                .foregroundColor(.teal)
                                            
                                            Image(systemName: "arrow.up.right.square")
                                                .resizable()
                                                .scaledToFill()
                                                .frame(width: 16, height: 16)
                                                .background(Color.white)
                                                .foregroundColor(.teal)
                                        }
                                    }
                                    .layoutPriority(100)
                                    
//                                    Spacer()
                                }
                                .padding()
                            }
                            .cornerRadius(10)
                            .overlay(
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color(.sRGB, red: 150/255, green: 150/255, blue: 150/255, opacity: 0.1), lineWidth: 1)
                            )
                            .padding([.top, .horizontal])
                        }.padding(.horizontal)
                    }
//                    .padding([.top, .bottom], 25)
                }
            }
            .background(Color(UIColor.white))
            .padding([.top, .bottom])
        }
    }
}

struct MyUnitedView_Previews: PreviewProvider {
    static var previews: some View {
        MyUnitedView()
    }
}
