//
//  ToolbarView.swift
//  Covid19
//
//  Created by Yovi Eka Putra on 23/07/21.
//

import SwiftUI

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
        .padding()
        .background(Color(hex: "473F97"))
    }
}

struct ToolbarView_Previews: PreviewProvider {
    static var previews: some View {
        ToolbarView()
    }
}
