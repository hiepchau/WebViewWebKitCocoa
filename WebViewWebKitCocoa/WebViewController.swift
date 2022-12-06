//
//  ViewController.swift
//  WebViewWebKitCocoa
//
//  Created by Châu Hiệp on 02/12/2022.
//

import UIKit

class WebViewController: UIViewController {

    @IBOutlet weak var webView: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let myProjectBundle:Bundle = Bundle.main
        let localFilePath:String = myProjectBundle.path(forResource: "my-html", ofType: "html")!
        let myURL = URL(string: localFilePath);
        let myURLRequest:URLRequest = URLRequest(url: myURL!)
        
        webView.loadRequest(myURLRequest)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func webViewDidStartLoad(_ webView: UIWebView)
    {
        print("Started to load")
    }
    func webViewDidFinishLoad(_ webView: UIWebView)
    {
        print("Finished loading")
    }

}

