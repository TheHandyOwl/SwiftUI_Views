//
//  ContentView.swift
//  SwiftUI_Views_ListView
//
//  Created by Carlos on 04/07/2020.
//  Copyright © 2020 TestCompany. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    var posts : [Post] = [
        Post(id: 1, userId: 1, title: "sunt aut facere repellat provident occaecati excepturi optio reprehenderit", body: "quia et suscipit suscipit recusandae consequuntur expedita et cum reprehenderit molestiae ut ut quas totam nostrum rerum est autem sunt rem eveniet architecto"),
        Post(id: 2, userId: 1, title: "qui est esse", body: "est rerum tempore vitae sequi sint nihil reprehenderit dolor beatae ea dolores neque fugiat blanditiis voluptate porro vel nihil molestiae ut reiciendis qui aperiam non debitis possimus qui neque nisi nulla"),
        Post(id: 3, userId: 1, title: "ea molestias quasi exercitationem repellat qui ipsa sit aut", body: "et iusto sed quo iure voluptatem occaecati omnis eligendi aut ad voluptatem doloribus vel accusantium quis pariatur molestiae porro eius odio et labore et velit aut"),
        Post(id: 4, userId: 1, title: "eum et est occaecati", body: "ullam et saepe reiciendis voluptatem adipisci sit amet autem assumenda provident rerum culpa quis hic commodi nesciunt rem tenetur doloremque ipsam iure quis sunt voluptatem rerum illo velit"),
        Post(id: 5, userId: 1, title: "nesciunt quas odio", body: "repudiandae veniam quaerat sunt sed alias aut fugiat sit autem sed est voluptatem omnis possimus esse voluptatibus quis est aut tenetur dolor neque"),
    ]
    
    var body: some View {
        NavigationView {
            List() {
                ForEach(posts) { post in
                    NavigationLink(destination: ScrollView {
                        VStack (alignment: .leading) {
                            Text(post.title)
                                .font(.largeTitle)
                                .padding()
                            Text(post.body)
                                .font(.body)
                                .padding()
                            Spacer()
                        }.navigationBarTitle(Text("Post detail"))
                    }) {
                        Text(post.title)
                    }
                }
            }.navigationBarTitle(Text("List of posts"))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
