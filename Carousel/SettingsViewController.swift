//
//  SettingsViewController.swift
//  Carousel
//
//  Created by James Taylor on 9/27/15.
//  Copyright © 2015 James Taylor. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController, UIScrollViewDelegate {
    
    
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scrollView.delegate = self
        scrollView.contentSize = imageView.image!.size
        
    }
    
    @IBAction func didPressClose(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }
}