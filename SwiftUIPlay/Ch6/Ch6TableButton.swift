//
//  Ch6TableButton.swift
//  SwiftUIPlay
//
//  Created by 吕丁阳 on 2020/3/1.
//  Copyright © 2020 吕丁阳. All rights reserved.
//

import SwiftUI

struct Ch6TableButton: View {
    var body: some View {
        TabView() {
            SwiftUIButton()
                .tabItem {
                    VStack {
                        Image(systemName: "heart.fill")
                        Text("Hello")
                    }
            }
            ImageButton()
                .tabItem {
                    Image(systemName: "delete.left.fill")
                    Text("Delete")
            }
            ExerciseButton()
                .tabItem {
                    Image(systemName: "plus.circle")
                    Text("Add")
                    
            }
        }
    }
}

struct Ch6TableButton_Previews: PreviewProvider {
    static var previews: some View {
        Ch6TableButton()
    }
}
