//
//  ListView.swift
//  SwiftUIPlay
//
//  Created by 吕丁阳 on 2020/3/7.
//  Copyright © 2020 吕丁阳. All rights reserved.
//

import SwiftUI

struct ListView: View {
    var body: some View {
           
           NavigationView {
               List(articles) { article in
                   ZStack {
                       ArticleRow(article: article)
                       NavigationLink(destination: ArticleDetailView(article: article)) {
                           EmptyView()
                       }
                   }
               }
           .navigationBarTitle("Your Reading")
           }
    
       }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
struct ArticleRow: View {
    var article: Article
    
    var body: some View {
        VStack(alignment: .leading) {
            Image(article.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .cornerRadius(5)
            
            Text(article.title)
                .font(.system(.title, design: .rounded))
                .fontWeight(.black)
                .lineLimit(3)
                .padding(.bottom, 0)
            
            Text("By \(article.author)".uppercased())
                .font(.subheadline)
                .foregroundColor(.secondary)
                .padding(.bottom, 0)
            
            HStack(spacing: 3) {
                ForEach(1...(article.rating), id: \.self) { _ in
                    Image(systemName: "star.fill")
                        .font(.caption)
                        .foregroundColor(.yellow)
                }
            }
            
            Text(article.excerpt)
                .font(.subheadline)
                .foregroundColor(.secondary)
            
        }
    }
}
