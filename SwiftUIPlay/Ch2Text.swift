//
//  Ch2.swift
//  SwiftUIPlay
//
//  Created by 吕丁阳 on 2020/2/25.
//  Copyright © 2020 吕丁阳. All rights reserved.
//

import SwiftUI

struct Ch2Text: View {
    var body: some View {
        Text("Your time is limited, so don’t waste it living someone else’s life. Don’t be trapped by dogma—which is living with the results of other people’s thinking. Don’t let the noise of others’ opinions drown out your own inner voice. And most important, have the courage to follow your heart and intuition.")
            .fontWeight(.bold)
            .font(.title)
            .padding()
            .foregroundColor(.blue)
            .multilineTextAlignment(.center)
            .lineLimit(nil)
            .lineSpacing(10)
            .shadow(color: .blue, radius: 3, x: 0, y: 10)
            .background(Color(.black))
            .cornerRadius(10)
            .rotation3DEffect(.degrees(40), axis: (x: 1, y: 0, z: 0))
    }
}

struct Ch2_Previews: PreviewProvider {
    static var previews: some View {
        Ch2Text()
    }
}
