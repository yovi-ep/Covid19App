//
//  ContentView.swift
//  Covid19
//
//  Created by Yovi Eka Putra on 20/07/21.
//

import SwiftUI

struct HomeView: View {
    
    @State private var tabSelected: Int = 0
    
    
    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .bottom) {
                ScrollView(.vertical) {
                    HeaderView(safeAreaTop: geometry.safeAreaInsets.top)
                    PreventionView().padding()
                    NewsView().padding()
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
