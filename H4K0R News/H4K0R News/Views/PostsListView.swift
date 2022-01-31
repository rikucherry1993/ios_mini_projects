//
//  ContentView.swift
//  H4K0R News
//
//  Created by 陸影 on 2022/01/29.
//

import SwiftUI

struct PostsListView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView {
            List(networkManager.posts){ post in
                NavigationLink(destination: PostView(objectID: post.id, url: post.url)) {
                    HStack {
                        Text(String(post.id))
                        Text(post.title)
                    }
                }
            }
            .navigationTitle("H4K0R")
        }
        .onAppear {
            //will be performed when this body view appeared on the screen
            self.networkManager.fetchData()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        PostsListView()
    }
}

//let posts = [
//    Post(id: 1, title: "dhiskjg"),
//    Post(id: 2, title: "dhitrssjg"),
//    Post(id: 3, title: "dhisaqqeeffgfkjg")
//]
