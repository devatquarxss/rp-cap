import Foundation
import Capacitor
import Razorpay

/**
 * Please read the Capacitor iOS Plugin Development Guide
 * here: https://capacitorjs.com/docs/plugins/ios
 */

//class ViewController: UIViewController, RazorpayPaymentCompletionProtocol, WKNavigationDelegate {
//        func onPaymentSuccess(_ payment_id: String, andData response: [AnyHashable : Any]) {
//            <#code#>
//        }
//
//        func onPaymentError(_ code: Int32, description str: String, andData response: [AnyHashable : Any]) {
//            <#code#>
//        }
//
//    // typealias Razorpay = RazorpayCheckout
//        var webView: WKWebView!
//        var razorpay: RazorpayCheckout!
//
//        override func viewDidLoad() {
//            super.viewDidLoad()
//            self.webView = WKWebView(frame: self.view.frame)
//            self.razorpay = RazorpayCheckout.initWithKey("Key", andDelegate: self, withPaymentWebView: self.webView)
//            self.view.addSubview(self.webView)
//        }
//}

@objc(rpPlugin)
public class rpPlugin: CAPPlugin {
    private let implementation = rp()

    @objc func echo(_ call: CAPPluginCall) {

        //let value = call.getString("value") ?? ""
        call.resolve([
            "value": implementation.echo("cat_dog_wolf")
        ])
    }
}
