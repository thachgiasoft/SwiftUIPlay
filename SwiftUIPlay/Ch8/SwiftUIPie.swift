//
//  SwiftUIPie.swift
//  SwiftUIPlay
//
//  Created by 吕丁阳 on 2020/3/2.
//  Copyright © 2020 吕丁阳. All rights reserved.
//

import SwiftUI

struct SwiftUIPie: View {
    var body: some View {
        ZStack {
            Path { path in
                path.move(to: CGPoint(x: 200, y: 200))
                path.addArc(center: .init(x: 200, y: 200), radius: 150, startAngle: Angle(
                    degrees: 0.0), endAngle: Angle(degrees: 190), clockwise: true)
            }
            .fill(Color(.systemYellow))
            Path { path in
                path.move(to: CGPoint(x: 200, y: 200))
                path.addArc(center: .init(x: 200, y: 200), radius: 150, startAngle: Angle(
                    degrees: 190), endAngle: Angle(degrees: 110), clockwise: true)
            }
            .fill(Color(.systemTeal))
            Path { path in
                path.move(to: CGPoint(x: 200, y: 200))
                path.addArc(center: .init(x: 200, y: 200), radius: 150, startAngle: Angle(
                    degrees: 110), endAngle: Angle(degrees: 90), clockwise: true)
            }
            .fill(Color(.systemBlue))
            Path { path in
                path.move(to: CGPoint(x: 200, y: 200))
                path.addArc(center: .init(x: 200, y: 200), radius: 150, startAngle: Angle(
                    degrees: 90.0), endAngle: Angle(degrees: 360), clockwise: true)
            }
            .fill(Color(.systemPurple))
            .offset(x: 20, y: 20)
            Path { path in
                path.move(to: CGPoint(x: 200, y: 200))
                path.addArc(center: .init(x: 200, y: 200), radius: 150, startAngle: Angle(
                    degrees: 90.0), endAngle: Angle(degrees: 360), clockwise: true)
                path.closeSubpath()
            }
            .stroke(Color(red: 52/255, green: 52/255, blue: 122/255), lineWidth: 10)
            .offset(x: 20, y: 20)
            .overlay(Text("25%")
            .font(.largeTitle)
            .bold()
            .foregroundColor(.white)
            .offset(x: 80, y: -120))
        }
    }
}

struct SwiftUIPie_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIPie()
    }
}
