//
//  SwiftUIShapeProtocol.swift
//  SwiftUIPlay
//
//  Created by 吕丁阳 on 2020/3/2.
//  Copyright © 2020 吕丁阳. All rights reserved.
//

import SwiftUI

struct SwiftUIShapeProtocol: View {
    var body: some View {
        VStack {
            Button(action: {
                
            }) {
                Text("Test")
                    .font(.system(.title, design: .rounded))
                    .bold()
                    .foregroundColor(.white)
                    .frame(width: 250, height: 50)
                    .background(Dome().fill(Color.red))
            }
            Circle()
                .foregroundColor(.green)
                .frame(width: 200, height: 200)
            .overlay(RoundedRectangle(cornerRadius: 5)
                .frame(width: 80, height: 80)
                .foregroundColor(.white))
        }
    }
}

struct SwiftUIShapeProtocol_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIShapeProtocol()
    }
}

struct Dome: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        path.move(to: CGPoint(x: 0, y: 0))
        path.addQuadCurve(to: CGPoint(x: rect.size.width, y: 0), control: CGPoint(x: rect.size.width / 2, y: -(rect.size.width * 0.1)))
        path.addRect(CGRect(origin: CGPoint(x: 0, y: 0), size: CGSize(width: rect.size.width, height: rect.size.height)))
        return path
    }
}
