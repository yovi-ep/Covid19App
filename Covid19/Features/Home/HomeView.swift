//
//  ContentView.swift
//  Covid19
//
//  Created by Yovi Eka Putra on 20/07/21.
//

import SwiftUI

struct HomeView: View {
    
    var body: some View {
        GeometryReader { geometry in
            VStack(spacing: 0) {
                ToolbarView()
                    .padding(.top, geometry.safeAreaInsets.top)
                    .background(Color(hex: "473F97"))
                
                ScrollView(.vertical) {
                    HeaderView()
                    PreventionView().padding()
                    NewsView().padding()
                    NewsView().padding()
                    NewsView().padding()
                }
            }.ignoresSafeArea(.all, edges: .top)
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
