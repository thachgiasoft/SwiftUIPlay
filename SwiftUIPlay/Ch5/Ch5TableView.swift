//
//  Ch5TableView.swift
//  SwiftUIPlay
//
//  Created by 吕丁阳 on 2020/3/1.
//  Copyright © 2020 吕丁阳. All rights reserved.
//

import SwiftUI

struct Ch5TableView: View {
    var body: some View {
        TabView() {
            Ch5ScrollView2()
                .tabItem {
                    VStack {
                        Image(systemName: "arrow.up.and.down")
                        Text("UP/DOWN")
                    }
            }
            Ch5ScrollView()
                .tabItem {
                    Image(systemName: "arrow.left.and.right")
                    Text("LEFT/RIGHT") }
        }
    }
}

struct Ch5TableView_Previews: PreviewProvider {
    static var previews: some View {
        Ch5TableView()
    }
}
