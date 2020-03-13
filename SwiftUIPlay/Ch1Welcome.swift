//
//  ContentView.swift
//  SwiftUIPlay
//
//  Created by 吕丁阳 on 2020/2/25.
//  Copyright © 2020 吕丁阳. All rights reserved.
//

import SwiftUI

struct Ch1Welcome: View {
    @State private var colorChange = false
    @State private var sizeChange = false
    var body: some View {
        VStack {
            Image(systemName: "heart.fill")
                .font(.system(size: 200))
                .foregroundColor(colorChange ? .yellow : .red)
                .scaleEffect(sizeChange ? 1.5 : 1)
                .animation(.spring(response: 0.45, dampingFraction: 0.425, blendDuration: 0))
                .onTapGesture {
                    self.sizeChange.toggle()
                }
                .onLongPressGesture {
                    self.colorChange.toggle()
                    
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Ch1Welcome()
    }
}
