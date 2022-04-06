//
//  CardView.swift
//  UnitedAirlinesView
//
//  Created by Joe Vargas on 4/6/22.
//

import SwiftUI

struct CardView: View {
    var image: String
    var subject: String
    var body: some View {
        VStack {
            Image(systemName: image)
                .resizable()
                .scaledToFill()
                .frame(width: 20, height: 20)
            Text(subject)
                .font(.system(size: 12))
        }
        .frame(width: 120, height: 100)
        .background(.white)
        .overlay{
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color(.sRGB, red: 150/255, green: 150/255, blue: 150/255,
                              opacity: 0.1), lineWidth: 0.9)
                .shadow(radius: 5)
        }
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(image: "bookmark.fill", subject: "MileagePlus")
    }
}
