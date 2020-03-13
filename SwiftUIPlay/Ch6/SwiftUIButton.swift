//
//  SwiftUIButton.swift
//  SwiftUIPlay
//
//  Created by 吕丁阳 on 2020/2/29.
//  Copyright © 2020 吕丁阳. All rights reserved.
//

import SwiftUI

struct SwiftUIButton: View {
    var body: some View {
        Button(action: {
            print("Hello World tapped!")
        }) {
            Text("Hello, World!")
                .padding()
                .background(Color.blue)
                .foregroundColor(.white)
                .font(.title)
                .cornerRadius(40)
                .padding(10)
                .overlay(RoundedRectangle(cornerRadius: 40).stroke(Color.blue, lineWidth: 5))
            
            
        }
        
    }
}

struct SwiftUIButton_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIButton()
    }
}
