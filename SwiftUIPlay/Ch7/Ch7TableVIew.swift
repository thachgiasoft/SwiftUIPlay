//
//  Ch7TableVIew.swift
//  SwiftUIPlay
//
//  Created by 吕丁阳 on 2020/3/1.
//  Copyright © 2020 吕丁阳. All rights reserved.
//

import SwiftUI

struct Ch7TableVIew: View {
    var body: some View {
        TabView() {
            SwiftUIState()
                .tabItem {
                    Image(systemName: "play.fill")
                    Text("Play/Pause")
            }
            SwiftUIBinding()
                .tabItem {
                    Image(systemName: "plus.square.fill")
                    Text("Plus")
            }
            ExerciseBinding()
                .tabItem {
                    Image(systemName: "plus.circle")
                    Text("Add all")
                    
            }
        }
    }
}

struct Ch7TableVIew_Previews: PreviewProvider {
    static var previews: some View {
        Ch7TableVIew()
    }
}
