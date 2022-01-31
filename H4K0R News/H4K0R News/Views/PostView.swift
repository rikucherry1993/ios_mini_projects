//
//  PostView.swift
//  H4K0R News
//
//  Created by 陸影 on 2022/01/29.
//

import SwiftUI

struct PostView: View {
    let objectID: String
    let url: String?
    
    var body: some View {
        WebView(urlString: url)
    }
}

struct PostView_Previews: PreviewProvider {
    static var previews: some View {
        PostView(objectID: "1", url: "www.google.com")
    }
}
