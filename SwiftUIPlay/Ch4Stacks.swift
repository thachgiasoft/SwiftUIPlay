//
//  Ch4Stacks.swift
//  SwiftUIPlay
//
//  Created by 吕丁阳 on 2020/2/25.
//  Copyright © 2020 吕丁阳. All rights reserved.
//

import SwiftUI

struct Ch4Stacks: View {
    var body: some View {
        VStack {
            HeaderView()
            HStack(spacing: 15) {
                PricingView(title: "Basic", price: "$9", textColor: .white, bgColor: .purple)
                ZStack {
                    PricingView(title: "Pro", price: "$19", textColor: .black, bgColor: .myGray)
                    Text("Best for designer")
                        .font(.system(.caption, design: .rounded))
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding(5)
                        .background(Color.myYellow)
                        .cornerRadius(10)
                        .offset(x: 0, y: 87)
                }
            }
            .padding(.horizontal)
            ZStack {
                PricingView(title: "Team", price: "$299", textColor: .white, bgColor: .myBlack, icon: "wand.and.rays")
                    .padding()
                Text("Perfect for teams with 20 members")
                    .font(.system(.caption, design: .rounded))
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .padding(5)
                    .background(Color.myYellow)
                    .cornerRadius(10)
                    .offset(x: 0, y: 110)
            }
            Spacer()
        }
    }
}
struct Ch4Stacks_exercise: View {
    var body: some View {
        ZStack {
            PricingView(title: "Basic", price: "$19", textColor: .white, bgColor: .purple, icon: "burst.fill")
            .padding()
                .offset(x: 0, y: -220)
            
            PricingView(title: "Pro", price: "$19", textColor: .white, bgColor: .myYellow, icon: "dial")
            .padding()
                .offset(x: 0, y: -110)
            
            PricingView(title: "Team", price: "$299", textColor: .white, bgColor: .myBlack, icon: "wand.and.rays")
                .padding()
        }
    }
}




extension Color {
    static let myGray = Color(red: 240/255, green: 240/255, blue: 240/255)
    static let myYellow = Color(red: 255/255, green: 183/255, blue: 37/255)
    static let myBlack = Color(red: 62/255, green: 63/255, blue: 70/255)
}

struct Ch4Stacks_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            Ch4Stacks()
                .previewDevice("iPhone 11 Pro Max")
            Ch4Stacks_exercise()
        }
    }
}

struct HeaderView: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 2) {
                Text("Choose")
                    .font(.system(.largeTitle, design: .rounded))
                    .fontWeight(.black)
                Text("Your Plan")
                    .font(.system(.largeTitle, design: .rounded))
                    .fontWeight(.black)
            }
            Spacer()
        }
        .padding()
        
    }
}

struct PricingView: View {
    var title: String
    var price: String
    var textColor: Color
    var bgColor: Color
    var icon: String?
    
    var body: some View {
        VStack{
            icon.map({
                Image(systemName: $0)
                    .font(.title)
                    .foregroundColor(textColor)
            })
            Text(title)
                .font(.system(.title, design: .rounded))
                .fontWeight(.black)
                .foregroundColor(textColor)
            Text(price)
                .font(.system(size: 40, weight: .heavy, design: .rounded))
                .foregroundColor(textColor)
            Text("per month")
                .font(.headline)
                .foregroundColor(textColor)
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 100)
            // maxWidth: .infinity 视图会尝试满足最大宽度，因此会尽量大，两个就会平分
            .padding(40)
            .background(bgColor)
            .cornerRadius(10)
    }
}
