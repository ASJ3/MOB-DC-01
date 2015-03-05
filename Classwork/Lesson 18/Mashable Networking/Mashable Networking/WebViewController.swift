//
//  WebViewController.swift
//  Mashable Networking
//
//  Created by Alexis Saint-Jean on 3/5/15.
//  Copyright (c) 2015 Alexis Saint-Jean. All rights reserved.
//

import UIKit

class WebViewController: UIViewController {
    @IBOutlet weak var webView: UIWebView!

    var request: NSURLRequest?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let request = self.request {
            self.webView.loadRequest(request)
        }
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
