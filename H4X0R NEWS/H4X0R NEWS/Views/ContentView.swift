//
//  ContentView.swift
//  H4X0R NEWS
//
//  Created by Enhui Zhang on 14/3/21.
//

import SwiftUI

struct ContentView: View {
   @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView{
            List(networkManager.posts) {
                NavigationLink
                post  in
                HStack {
                    Text(String(post.points))
                    Text(post.title)
                }
            }
        .navigationTitle("H4X0R NEWS")
        }
        .onAppear
        {
            self.networkManager.fetchData()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


