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
        VStack(spacing: 10) {
            Image(systemName: image)
                .resizable()
                .scaledToFill()
                .frame(width: 20, height: 20)
            Text(subject)
                .font(.system(size: 11))
        }
        .frame(width: 110, height: 90)
        .background(.white)
        .overlay{
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color(.sRGB, red: 150/255, green: 150/255, blue: 150/255, opacity: 0.1), lineWidth: 1)
                .shadow(color: .black, radius: 5, x: 0, y: 0)
        }
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(image: "bookmark.fill", subject: "MileagePlus")
    }
}
