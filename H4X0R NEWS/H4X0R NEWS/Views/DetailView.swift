//
//  DetailView.swift
//  H4X0R NEWS
//
//  Created by Enhui Zhang on 14/3/21.
//

import SwiftUI
import WebKit

import WebKit
struct DetailView: View {
    let url:String?
    
    var body: some View {
        WebView(urlString: url)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "https://www.google.com.au")
    }
}



