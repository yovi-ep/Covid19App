//
//  PreventionView.swift
//  Covid19
//
//  Created by Yovi Eka Putra on 23/07/21.
//

import SwiftUI

struct PreventionView: View {
    private let preventionImage: [String] = [
        "avoid_close_cantact",
        "clean_your_hand_often",
        "ware_a_facemask",
    ]
    private let preventionTitle: [String] = [
        "Avoid close contact",
        "Clean your hands often",
        "Wear a facemask",
    ]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            HStack {
                Text("Prevention")
                    .font(.title3)
                    .fontWeight(.medium)
                Spacer()
            }

            HStack(alignment: .top) {
                ForEach(0..<preventionImage.count) { idx in
                    Spacer()
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
                                .frame(width: 90)
                        }
                    })
                    Spacer()
                }
            }
        }
    }
}

struct PreventionView_Previews: PreviewProvider {
    static var previews: some View {
        PreventionView()
    }
}
