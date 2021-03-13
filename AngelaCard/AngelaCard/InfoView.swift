//
//  InfoView.swift
//  AngelaCard
//
//  Created by Enhui Zhang on 13/3/21.
//

import SwiftUI
struct InfoView: View {
    let text:String
    let imageName: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 25).fill(Color.white).frame(height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .overlay(HStack {
                Image(systemName: imageName).foregroundColor(.green)
                Text(text).foregroundColor(.black)
            })
            .padding(.all)
    }
}



struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(text: "Hello", imageName: "phone.fill").previewLayout(.sizeThatFits)
    }
}
