//
//  SwiftUIPath.swift
//  SwiftUIPlay
//
//  Created by 吕丁阳 on 2020/3/2.
//  Copyright © 2020 吕丁阳. All rights reserved.
//

import SwiftUI

struct SwiftUIPath: View {
    var body: some View {
        VStack {
            Path() { path in
                path.move(to: CGPoint(x: 20, y: 20))
                path.addLine(to: CGPoint(x: 300, y: 20))
                path.addLine(to: CGPoint(x: 300, y: 200))
                path.addLine(to: CGPoint(x: 20, y: 200))
                path.closeSubpath()
            }
            .stroke(Color.green, lineWidth: 10)
            Path() { path in
                path.move(to: CGPoint(x: 20, y: 60))
                path.addLine(to: CGPoint(x: 40, y: 60))
                path.addQuadCurve(to: CGPoint(x: 210, y: 60), control: CGPoint(x: 125, y: 0))
                path.addLine(to: CGPoint(x: 230, y: 60))
                path.addLine(to: CGPoint(x: 230, y: 100))
                path.addLine(to: CGPoint(x: 20, y: 100))
                path.closeSubpath()
            }
            .fill(Color.red)
            ZStack {
                Path() { path in
                    path.move(to: CGPoint(x: 20, y: 60))
                    path.addLine(to: CGPoint(x: 40, y: 60))
                    path.addQuadCurve(to: CGPoint(x: 210, y: 60), control: CGPoint(x: 125, y: 0))
                    path.addLine(to: CGPoint(x: 230, y: 60))
                    path.addLine(to: CGPoint(x: 230, y: 100))
                    path.addLine(to: CGPoint(x: 20, y: 100))
                    path.closeSubpath()
                }
                .fill(Color.red)
                Path() { path in
                    path.move(to: CGPoint(x: 20, y: 60))
                    path.addLine(to: CGPoint(x: 40, y: 60))
                    path.addQuadCurve(to: CGPoint(x: 210, y: 60), control: CGPoint(x: 125, y: 0))
                    path.addLine(to: CGPoint(x: 230, y: 60))
                    path.addLine(to: CGPoint(x: 230, y: 100))
                    path.addLine(to: CGPoint(x: 20, y: 100))
                    path.closeSubpath()
                }
                .stroke(Color.blue, lineWidth: 10)
            }
        }
        //.fill(Color.green)
        
        
    }
}

struct SwiftUIPath_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIPath()
    }
}
