//
//  ContentView.swift
//  Covid19
//
//  Created by Yovi Eka Putra on 20/07/21.
//

import SwiftUI

struct HomeView: View {
    private let preventionImage: [String] = [
        "clean_your_hand_often",
        "clean_your_hand_often",
        "ware_a_facemask",
    ]
    private let preventionTitle: [String] = [
        "Avoid close contact",
        "Clean your hands often",
        "Wear a facemask",
    ]
    @State private var tabSelected: Int = 0
    
    
    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .bottom) {
                ScrollView {
                    HeaderView(safeAreaTop: geometry.safeAreaInsets.top)

                    VStack(alignment: .leading, spacing: 16) {
                        Text("Prevention")
                            .font(.title3)
                            .fontWeight(.medium)

                        HStack(alignment: .top, spacing: 8) {
                            ForEach(0..<preventionImage.count) { idx in
                                Button(action: {}, label: {
                                    VStack(spacing: 16) {
                                        Image(preventionImage[idx])
                                            .resizable()
                                            .frame(width: 90, height: 90)
                                            .aspectRatio(contentMode: .fill)

                                        Text(preventionTitle[idx])
                                            .font(.subheadline)
                                            .fontWeight(.medium)
                                            .multilineTextAlignment(.center)
                                            .foregroundColor(.primary)
                                            .padding(.horizontal, 8)
                                    }
                                })
                            }
                        }.fixedSize(horizontal: false, vertical: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
                    }.padding()
                }.edgesIgnoringSafeArea(.top)
                
                TabBarView(tabSelected: $tabSelected)
                    .padding(.vertical, 8)
                    .padding(.horizontal, 16)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
