//
//  NewsView.swift
//  Covid19
//
//  Created by Yovi Eka Putra on 23/07/21.
//

import SwiftUI

struct NewsView: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 16)
                .fill(
                    LinearGradient(
                        gradient: Gradient(colors: [Color(hex: "AEA1E5"), Color(hex: "56549E")]),
                        startPoint: .leading,
                        endPoint: .trailing
                    )
                ).padding(.top, 16)
            
            HStack(spacing: 16) {
                Image("care_female")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 111, height: 116)
                
                VStack(alignment: .leading, spacing: 8) {
                    Text("Do your own test!")
                        .font(.title3)
                        .fontWeight(.medium)
                        .foregroundColor(.white)
                    
                    Text("Follow the instructions to do your own test.")
                        .font(.subheadline)
                        .fontWeight(.light)
                        .multilineTextAlignment(.leading)
                        .foregroundColor(.white)
                }.padding(.top, 16)
                
            }
            .padding(.horizontal)
        }.frame(height: 116)
    }
}

struct NewsView_Previews: PreviewProvider {
    static var previews: some View {
        NewsView()
            .previewLayout(.sizeThatFits)
    }
}
