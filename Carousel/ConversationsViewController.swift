//
//  ConversationsViewController.swift
//  Carousel
//
//  Created by James Taylor on 9/27/15.
//  Copyright © 2015 James Taylor. All rights reserved.
//

import UIKit

class ConversationsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func backButton(sender: AnyObject) {
        navigationController!.popViewControllerAnimated(true)
    }
}
