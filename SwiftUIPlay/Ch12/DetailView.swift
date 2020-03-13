//
//  DetailView.swift
//  SwiftUIPlay
//
//  Created by 吕丁阳 on 2020/3/7.
//  Copyright © 2020 吕丁阳. All rights reserved.
//

import SwiftUI

struct DetailView: View {
    @Environment(\.presentationMode) var presentationMode
    var article: Article
    @State private var showAlert = false
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                Image(article.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                
                Group {
                    Text(article.title)
                        .font(.system(.title, design: .rounded))
                        .fontWeight(.black)
                        .lineLimit(3)
                    
                    Text("By \(article.author)".uppercased())
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                }
                .padding(.bottom, 0)
                .padding(.horizontal)
                
                Text(article.content)
                    .font(.body)
                    .padding()
                    .lineLimit(1000)
                    .multilineTextAlignment(.leading)
            }
            
        }
        .overlay(
            HStack {
                Spacer()
                VStack {
                    Button(action: {
                        self.showAlert = true
                    }, label: {
                        Image(systemName: "chevron.down.circle.fill")
                            .font(.largeTitle)
                            .foregroundColor(.white)
                    })
                        .padding(.trailing, 20)
                        .padding(.top, 40)
                    Spacer()
                }
            }
        )
            
            .edgesIgnoringSafeArea(.top)
            .alert(isPresented: $showAlert) {
                Alert(title: Text("Reminder"), message: Text("Are you sure you finish reading the article?"), primaryButton: .default(Text("Yes"), action: {
                    self.presentationMode.wrappedValue.dismiss() }), secondaryButton: .cancel(Text("No")))
        }
        
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(article: articles[0])
    }
}
