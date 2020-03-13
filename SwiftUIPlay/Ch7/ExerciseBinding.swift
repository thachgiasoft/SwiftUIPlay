//
//  ExerciseBinding.swift
//  SwiftUIPlay
//
//  Created by 吕丁阳 on 2020/3/1.
//  Copyright © 2020 吕丁阳. All rights reserved.
//

import SwiftUI

struct ExerciseBinding: View {
    @State private var counter1 = 1
    @State private var counter2 = 1
    @State private var counter3 = 1
    var body: some View {
        VStack {
            Text("\(counter1 + counter2 + counter3)")
                .font(.system(size: 150, weight: .bold, design: .rounded))
            HStack {
                CounterButton2(counter: $counter1, color: .blue)
                CounterButton2(counter: $counter2, color: .green)
                CounterButton2(counter: $counter3, color: .red)
            }
        }
    }
}

struct ExerciseBinding_Previews: PreviewProvider {
    static var previews: some View {
        ExerciseBinding()
    }
}
struct CounterButton2: View {
    @Binding var counter: Int
    var color: Color
    var body: some View {
        Button(action: {
            self.counter += 1
        }) {
            Circle()
                .frame(width: 120, height: 120)
                .foregroundColor(color)
                .overlay(
                    Text("\(counter)")
                        .font(.system(size: 60, weight: .bold, design: .rounded))
                        .foregroundColor(.white)
            )
        }
    }
}
