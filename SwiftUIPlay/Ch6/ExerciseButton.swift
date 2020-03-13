//
//  ExerciseButton.swift
//  SwiftUIPlay
//
//  Created by 吕丁阳 on 2020/2/29.
//  Copyright © 2020 吕丁阳. All rights reserved.
//

import SwiftUI

struct ExerciseButton: View {
    @State var opened = false
    var body: some View {
        Button(action: {
            self.opened.toggle()
        }) {
            Image(systemName: "plus")
                .font(.system(size: 70))
                .padding(30)
                .background(Color.purple)
                .foregroundColor(.white)
                .clipShape(Circle())
                .rotationEffect(opened ? Angle(degrees: 45) : Angle(degrees: 0))
                .animation(.easeIn(duration: 0.2))
        }
    }
}

struct ExerciseButton_Previews: PreviewProvider {
    static var previews: some View {
        ExerciseButton()
    }
}
