//
//  ContentView.swift
//  PDF-Editor-iOS
//
//  Created by Alex Gameli Heyman on 25/01/2023.
//

import SwiftUI
import Foundation
import WebKit

struct ContentView: View {
    var body: some View {
        WebViewiOS(url: URL(string: "https://editor-8f407.web.app/?demo=demo")!)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



// MARK: - Webview for iOS
struct WebViewiOS: UIViewRepresentable {
    let url: URL
    
    func makeUIView(context: Context) -> WKWebView {
        let request = URLRequest(url: url)
        let webView =  WKWebView(frame: .zero)
        webView.load(request)
        return webView
    }
    
    func updateUIView(_ webView: WKWebView, context: Context) {
    }
}
