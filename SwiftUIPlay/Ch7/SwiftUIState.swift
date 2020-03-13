//
//  SwiftUIState.swift
//  SwiftUIPlay
//
//  Created by 吕丁阳 on 2020/3/1.
//  Copyright © 2020 吕丁阳. All rights reserved.
//

import SwiftUI

struct SwiftUIState: View {
    @State private var isPlaying = false
    
    var body: some View {
        Button(action: {
            self.isPlaying.toggle()
        }) {
            Image(systemName: isPlaying ? "stop.circle.fill" : "play.circle.fill")
                .font(.system(size: 150))
                .foregroundColor(isPlaying ? .red : .green)
        }
    }
}

struct SwiftUIState_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIState()
    }
}
