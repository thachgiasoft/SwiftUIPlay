//
//  AllSwiftUI.swift
//  SwiftUIPlay
//
//  Created by 吕丁阳 on 2020/2/25.
//  Copyright © 2020 吕丁阳. All rights reserved.
//

import SwiftUI

struct AllSwiftUI: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink(destination: Ch1Welcome()) {
                    Text("Ch1")
                }
                NavigationLink(destination: Ch2Text()) {
                    Text("Ch2")
                }
                NavigationLink(destination: Ch3Image()) {
                    Text("Ch3")
                }
                NavigationLink(destination: Ch4Stacks()) {
                    Text("Ch4")
                }
                NavigationLink(destination: Ch5TableView()) {
                    Text("Ch5")
                }
                NavigationLink(destination: Ch6TableButton()) {
                    Text("Ch6")
                }
                NavigationLink(destination: Ch7TableVIew()) {
                    Text("Ch7")
                }
                NavigationLink(destination: SwiftUIProgressIndicator()) {
                    Text("Ch8")
                }
                NavigationLink(destination: Transitions()) {
                    Text("Ch9")
                }
                
            }
        .navigationBarTitle("SwiftUI")
        }
    }
}

struct AllSwiftUI_Previews: PreviewProvider {
    static var previews: some View {
        AllSwiftUI()
    }
}
