//
//  HeaderView.swift
//  Covid19
//
//  Created by Yovi Eka Putra on 20/07/21.
//

import SwiftUI

struct HeaderView: View {
    var safeAreaTop: CGFloat? = 0
    
    var body: some View {
        VStack(alignment: .leading) {
            ToolbarView()
                .padding()
                .padding(.top, safeAreaTop)
            
            HStack(spacing: 8) {
                Text("Covid-19")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                
                Spacer()
                
                Button(action: {}, label: {
                    HStack(spacing: 8) {
                        Image("usa")
                            .resizable()
                            .frame(width: 24, height: 24)
                            .aspectRatio(contentMode: .fill)
                            .clipShape(Circle())
                            
                        Text("USA")
                            .foregroundColor(Color(hex: "0D1333"))
                            .font(.headline)
                            .fontWeight(.medium)
                        
                        Image(systemName: "arrowtriangle.down.fill")
                            .resizable()
                            .frame(width: 10, height: 8)
                            .aspectRatio(contentMode: .fill)
                            .foregroundColor(Color(hex: "61688B"))
                            .padding(.trailing, 8)
                    }.padding(8)
                })
                .background(Color.white)
                .clipShape(Capsule())
            }.padding(.horizontal, 16)
            
            Text("Are you feeling sick?")
                .foregroundColor(.white)
                .font(.title2)
                .fontWeight(.bold)
                .padding(.horizontal, 16)
                .padding(.top, 16)
                .padding(.bottom, 4)
            
            Text("If you feel sick with any of covid-19 symptoms please call or SMS us immediately for help.")
                .foregroundColor(.white)
                .font(.subheadline)
                .fontWeight(.light)
                .padding(.horizontal)
            
            HStack(alignment: .center, spacing: 16) {
                Button(action: {}, label: {
                    Image(systemName: "phone.fill")
                        .resizable()
                        .frame(width: 24, height: 24)
                        .aspectRatio(contentMode: .fill)
                        .foregroundColor(.white)
                        
                    Text("Call Now")
                        .foregroundColor(.white)
                        .font(.headline)
                        .fontWeight(.bold)
                })
                .padding()
                .padding(.horizontal)
                .background(Color(hex: "FF4D58"))
                .clipShape(Capsule())
                
                Button(action: {}, label: {
                    Image(systemName: "message.fill")
                        .resizable()
                        .frame(width: 24, height: 24)
                        .aspectRatio(contentMode: .fill)
                        .foregroundColor(.white)
                        
                    Text("Send SMS")
                        .foregroundColor(.white)
                        .font(.headline)
                        .fontWeight(.bold)
                })
                .padding()
                .padding(.horizontal)
                .background(Color(hex: "4D79FF"))
                .clipShape(Capsule())
            }
            .fixedSize()
            .padding(.horizontal)
            .padding(.top, 16)
            .padding(.bottom, 32)
        }
        .background(
            RoundedCorners(
                color: Color(hex: "473F97"),
                tl: 0, tr: 0, bl: 40, br: 40
            )
        )
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(safeAreaTop: 20)
    }
}

struct ToolbarView: View {
    var body: some View {
        HStack {
            Button(action: {}, label: {
                Image(systemName: "line.horizontal.3")
                    .foregroundColor(Color.white)
                    .frame(width: 24, height: 24)
            })
            
            Spacer()
            
            Button(action: {}, label: {
                Image(systemName: "bell")
                    .foregroundColor(Color.white)
                    .frame(width: 24, height: 24)
            })
        }
    }
}
