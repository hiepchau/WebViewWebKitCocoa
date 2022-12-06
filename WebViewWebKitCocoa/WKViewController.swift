//
//  WKViewController.swift
//  WebViewWebKitCocoa
//
//  Created by Châu Hiệp on 02/12/2022.
//

import UIKit
import WebKit

class WKViewController: UIViewController, WKNavigationDelegate, UITextFieldDelegate {
    
    @IBOutlet weak var backBtn: UIBarButtonItem!
    @IBOutlet weak var forwardBtn: UIBarButtonItem!
    var url = "https://www.google.com/"
    @IBOutlet weak var wkView: WKWebView!
    
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.isHidden = true

        // Do any additional setup after loading the view.
        let parseUrl = URL(string: url)
        wkView.load(URLRequest(url: parseUrl!))
        wkView.allowsBackForwardNavigationGestures = true
    }
}
