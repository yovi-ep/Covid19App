//
//  MainView.swift
//  Covid19
//
//  Created by Yovi Eka Putra on 23/07/21.
//

import SwiftUI

struct MainView: View {
    @State private var tabSelected: Int = 0
    
    var body: some View {
        GeometryReader { geometry in
            VStack(spacing: 0) {
                
                NavigationView {
                    HomeView()
                        .navigationBarHidden(true)
                }
                
                Divider()
                
                TabBarView(tabSelected: $tabSelected)
                    .padding(.vertical, 16)
                    .padding(.horizontal, 16)
                    .padding(.bottom, geometry.safeAreaInsets.bottom)
                    .background(Color.white)
            }.ignoresSafeArea()
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
