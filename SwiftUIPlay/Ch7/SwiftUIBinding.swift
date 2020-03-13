//
//  SwiftUIBinding.swift
//  SwiftUIPlay
//
//  Created by 吕丁阳 on 2020/3/1.
//  Copyright © 2020 吕丁阳. All rights reserved.
//

import SwiftUI

struct SwiftUIBinding: View {
    @State private var counter = 1
    var body: some View {
        VStack {
            CounterButton(counter: $counter, color: .blue)
            CounterButton(counter: $counter, color: .green)
            CounterButton(counter: $counter, color: .red )
        }
    }
}

struct CounterButton: View {
    @Binding var counter: Int
    var color: Color
    var body: some View {
        Button(action: {
            self.counter += 1
        }) {
            Circle()
                .frame(width: 200, height: 200)
                .foregroundColor(color)
                .overlay(
                    Text("\(counter)")
                        .font(.system(size: 100, weight: .bold, design: .rounded))
                        .foregroundColor(.white)
            )
            //            Text("\(counter)")
            //                .font(.system(size: 100, weight: .bold, design: .rounded))
            //                .foregroundColor(.white)
            //                .frame(width: 200, height: 200)
            //                .background(Color(.red))
            //                .clipShape(Circle())
            
        }
    }
}

struct SwiftUIBinding_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIBinding()
    }
}
