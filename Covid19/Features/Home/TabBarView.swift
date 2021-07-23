//
//  TabView.swift
//  Covid19
//
//  Created by Yovi Eka Putra on 20/07/21.
//

import SwiftUI

struct TabBarView: View {
    private let tabImages = ["house.fill", "chart.bar.xaxis", "newspaper", "info.circle.fill"]
    @Namespace private var currentTab
    @Binding var tabSelected: Int
    
    var body: some View {
        HStack(alignment: .top, spacing: 4) {
            ForEach(tabImages.indices) { idx in
                ZStack(alignment: .center) {
                    if idx == tabSelected {
                        Capsule()
                            .foregroundColor(Color(hex: "4C79FF"))
                            .matchedGeometryEffect(id: "currentTab", in: currentTab)
                            .animation(.easeIn(duration: 0.2))
                            
                    }
                    
                    Image(systemName: tabImages[idx])
                        .resizable()
                        .frame(width: 24, height: 24, alignment: .center)
                        .aspectRatio(contentMode: .fill)
                        .foregroundColor(idx == tabSelected ? Color.white : Color(hex: "999FBF"))
                }
                .frame(width: 56, height: 36, alignment: .center)
                .padding(.horizontal)
                .onTapGesture {
                    withAnimation {
                        tabSelected = idx
                    }
                }
            }
        }
    }
}

struct TabView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView(tabSelected: Binding.constant(0))
            .previewLayout(.sizeThatFits)
    }
}
