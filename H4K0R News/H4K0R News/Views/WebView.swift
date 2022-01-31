//
//  WebView.swift
//  H4K0R News
//
//  Created by 陸影 on 2022/01/31.
//

import WebKit
import SwiftUI


struct WebView: UIViewRepresentable {
    let urlString: String?
    
    //Create the Webview
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    //Once the webview got created, loads the request associated with
    //designeted url to the view.
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let safeUrlString = urlString {
            if let url = URL(string: safeUrlString) {
                let request = URLRequest(url: url)
                uiView.load(request)
            }
        }
    }
}
