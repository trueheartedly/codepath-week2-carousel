//
//  WelcomeViewController.swift
//  Dropbox
//
//  Created by James Taylor on 9/20/15.
//
//  Code applies tutorial at http://www.raywenderlich.com/76436/use-uiscrollview-scroll-zoom-content-swift


import UIKit

class WelcomeViewController: UIViewController, UIScrollViewDelegate {
    
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var enterAppView: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
        enterAppView.alpha = 0
        scrollView.contentSize = CGSize(width:1280, height:568)
        scrollView.delegate = self
    }
    
    func scrollViewDidEndDecelerating(scrollView: UIScrollView) {
        // Get the current page based on the scroll offset
        let page : Int = Int(round(scrollView.contentOffset.x / 320))
            
        // Set the current page, so the dots will update
        pageControl.currentPage = page
        
        if page == 3 {
            UIView.animateWithDuration(0.3) { () -> Void in
                self.enterAppView.alpha = 1
            }
        } else {
            UIView.animateWithDuration(0.3) { () -> Void in
                self.enterAppView.alpha = 0
            }
        }
    }
}
