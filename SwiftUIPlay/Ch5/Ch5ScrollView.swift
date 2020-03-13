//
//  Ch5ScrollView.swift
//  SwiftUIPlay
//
//  Created by 吕丁阳 on 2020/2/26.
//  Copyright © 2020 吕丁阳. All rights reserved.
//

import SwiftUI

struct Ch5ScrollView: View {
    var body: some View {
        VStack {
            HStack {
                VStack(alignment: .leading) {
                    Text("Moundy, Aug 20".uppercased())
                        .foregroundColor(.secondary)
                    Text("Your Reading")
                        .fontWeight(.bold)
                        .font(.system(.largeTitle, design: .rounded))
                }
                Spacer()
            }
            .padding([.top, .horizontal])
            ScrollView(.horizontal,showsIndicators: false) {
                
                HStack {
                    CardView(image: "swiftui-button", category: "SwiftUI", heading: "Drawing a Border with Rounded Corners", author: "Simon Ng")
                    .frame(width: 300)
                    CardView(image: "macos-programming", category: "macOS", heading: "Building a Simple Editing App", author: "Gabriel Theodoropoulos")
                    .frame(width: 300)
                    CardView(image: "flutter-app", category: "Flutter", heading: "Building a Complex Layout with Flutter", author: "Lawrence Tan")
                    .frame(width: 300)
                    CardView(image: "natural-language-api", category: "iOS", heading:"What's New in Natural Language API", author: "Sai Kambampati")
                    .frame(width: 300)
                }
                
            }
            Spacer()
        }
        
    }
}

struct Ch5ScrollView2: View {
    var body: some View {
        ScrollView() {
            HStack {
                VStack(alignment: .leading) {
                    Text("Moundy, Aug 20".uppercased())
                        .foregroundColor(.secondary)
                    Text("Your Reading")
                        .fontWeight(.bold)
                        .font(.system(.largeTitle, design: .rounded))
                }
                Spacer()
            }
            .padding([.top, .horizontal])
            VStack {
                CardView(image: "swiftui-button", category: "SwiftUI", heading: "Drawing a Border with Rounded Corners", author: "Simon Ng")
                CardView(image: "macos-programming", category: "macOS", heading: "Building a Simple Editing App", author: "Gabriel Theodoropoulos")
                CardView(image: "flutter-app", category: "Flutter", heading: "Building a Complex Layout with Flutter", author: "Lawrence Tan")
                CardView(image: "natural-language-api", category: "iOS", heading:"What's New in Natural Language API", author: "Sai Kambampati")
            }
            
        }
        
    }
}

struct Ch5ScrollView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            Ch5ScrollView()
            Ch5ScrollView2()
        }
    }
}
