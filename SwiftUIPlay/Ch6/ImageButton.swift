//
//  ImageButton.swift
//  SwiftUIPlay
//
//  Created by 吕丁阳 on 2020/2/29.
//  Copyright © 2020 吕丁阳. All rights reserved.
//

import SwiftUI

struct ImageButton: View {
    var body: some View {
        Button(action: {
            
        }) {
            HStack {
                Image(systemName: "trash")
                    .font(.title)
                Text("Delete")
                    .fontWeight(.semibold)
                    .font(.title)
            }
        }
    .buttonStyle(GradientBackgroundStyle())
    }
}

struct ImageButton_Previews: PreviewProvider {
    static var previews: some View {
        ImageButton()
    }
}

struct GradientBackgroundStyle: ButtonStyle {
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
        .frame(minWidth: 0, maxWidth: .infinity)
        .padding()
        .foregroundColor(.white)
        .background(LinearGradient(gradient: Gradient(colors: [Color("DarkGreen"), Color("LightGreen")]), startPoint: .leading, endPoint: .trailing))
        .cornerRadius(40)
        .shadow(radius: 5.0)
        .padding(.horizontal, 20)
        
    }
}
