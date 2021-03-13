//
//  ContentView.swift
//  AngelaCard
//
//  Created by Enhui Zhang on 12/3/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Color(red:0.09,green:0.63,blue:0.52).edgesIgnoringSafeArea(    .all)
            Text("Hello, world!")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .bold().foregroundColor(.white)
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
