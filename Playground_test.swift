import UIKit
import SwiftUI
import WebKit
import PlaygroundSupport
class ViewController: UIViewController, WKUIDelegate {
    var webView: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        let myURL = URL(string:"https://www.funreading.fr")
        let myRequest = URLRequest(url: myURL!)
        webView.load(myRequest)
    }
    override func loadView() {
        let webConfiguration = WKWebViewConfiguration()
        webView = WKWebView(frame: .zero, configuration: webConfiguration)
        webView.uiDelegate = self
        view = webView
    }
}
PlaygroundPage.current.setLiveView(ViewController())
