//
//  Ch3Image.swift
//  SwiftUIPlay
//
//  Created by 吕丁阳 on 2020/2/25.
//  Copyright © 2020 吕丁阳. All rights reserved.
//

import SwiftUI

struct Ch3Image: View {
    var body: some View {
        TabView() {
            VStack {
                Image("paris")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .overlay(Text("If you are lucky enough to have lived in Paris as a young man, then wherever you go for the rest of your life it stays with you, for Paris is a moveab le feast.\n\n- Ernest Hemingway")
                        .fontWeight(.heavy)
                        .font(.system(.headline, design: .rounded))
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.black)
                        .cornerRadius(10)
                        .opacity(0.8)
                        .padding(),
                             alignment: .top
                )
                Spacer()
            }.tabItem {
                    VStack {
                        Image(systemName: "book")
                        Text("Introduction")
                    }
            }
            VStack {
                Ch3Image2()
                Spacer()
            }
            
                .tabItem {
                    VStack {
                        Image(systemName: "tv")
                        Text("Image")
                    }
            }
        }
        
    }
}
struct Ch3Image2: View {
    var body: some View {
        Image("paris")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .overlay(
                Rectangle()
                    .foregroundColor(.black)
                    .opacity(0.4)
                    .overlay(
                        Text("Paris")
                            .font(.largeTitle)
                            .fontWeight(.black)
                            .foregroundColor(.white)
                            .frame(width: 200)
                )
        )
    }
}

struct Ch3Image_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            Ch3Image()
            Ch3Image2()
        }
    }
}

