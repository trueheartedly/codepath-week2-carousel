//
//  TermsViewController.swift
//  Carousel
//
//  Created by James Taylor on 9/27/15.
//  Copyright © 2015 James Taylor. All rights reserved.
//

import UIKit

class TermsViewController: UIViewController {

    @IBOutlet weak var webView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let url = NSURL (string: "https://www.dropbox.com/terms?mobile=1");
        let requestObj = NSURLRequest(URL: url!);
        webView.loadRequest(requestObj);

    }

    @IBAction func didPressClose(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }


}
