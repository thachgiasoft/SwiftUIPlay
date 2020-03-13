//
//  ModalView.swift
//  SwiftUIPlay
//
//  Created by 吕丁阳 on 2020/3/7.
//  Copyright © 2020 吕丁阳. All rights reserved.
//

import SwiftUI

struct ModalView: View {
     @State var selectedArticle: Article?
       var body: some View {
           NavigationView {
               List(articles) { article in
                   ArticleRow(article: article)
                       .onTapGesture {
                           self.selectedArticle = article
                   }
               }
               .sheet(item: self.$selectedArticle) { article in
                   if self.selectedArticle != nil {
                       DetailView(article: self.selectedArticle!)
                   }
               }

               .navigationBarTitle("Your Reading")
           }
       }
}

struct ModalView_Previews: PreviewProvider {
    static var previews: some View {
        ModalView()
    }
}
