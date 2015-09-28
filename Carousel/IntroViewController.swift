//
//  IntroViewController.swift
//  Carousel
//
//  Created by James Taylor on 9/23/15.
//  Copyright © 2015 James Taylor. All rights reserved.
//

import UIKit

class IntroViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var Tile1ImageView: UIImageView!
    @IBOutlet weak var Tile2ImageView: UIImageView!
    @IBOutlet weak var Tile3ImageView: UIImageView!
    @IBOutlet weak var Tile4ImageView: UIImageView!
    @IBOutlet weak var Tile5ImageView: UIImageView!
    @IBOutlet weak var Tile6ImageView: UIImageView!
    
    var tile1EndX = CGFloat(47)
    var tile1EndY = CGFloat(750)
    var tile1Scale = CGFloat(1.0)
    var tile2EndX = CGFloat(200)
    var tile2EndY = CGFloat(750)
    var tile2Scale = CGFloat(0.5)
    var tile3EndX = CGFloat(200)
    var tile3EndY = CGFloat(827)
    var tile3Scale = CGFloat(0.5)
    var tile4EndX = CGFloat(47)
    var tile4EndY = CGFloat(903)
    var tile4Scale = CGFloat(0.5)
    var tile5EndX = CGFloat(123)
    var tile5EndY = CGFloat(904)
    var tile5Scale = CGFloat(0.5)
    var tile6EndX = CGFloat(200)
    var tile6EndY = CGFloat(904)
    var tile6Scale = CGFloat(0.5)
   
    
    // change origin to top left?
    // scroll offset?
    // 

    
    var scale = CGFloat(1.0)
    var rotation = CGFloat(0)
    var intitalCenter: CGPoint!
    
    
    override func viewDidLoad() {
        scrollView.delegate = self


        super.viewDidLoad()
        scrollView.contentSize = imageView.image!.size
        
        Tile1ImageView.transform = CGAffineTransformMakeRotation(CGFloat(-30 * M_PI / 180))
        //Tile1ImageView.transform = CGAffineTransformMakeScale(scale, scale)
        
        Tile1ImageView.center.x = tile1EndX
        Tile1ImageView.center.y = tile1EndY
        Tile2ImageView.center.x = tile2EndX
        Tile2ImageView.center.y = tile2EndY
        Tile3ImageView.center.x = tile3EndX
        Tile3ImageView.center.y = tile3EndY
        Tile4ImageView.center.x = tile4EndX
        Tile4ImageView.center.y = tile4EndY
        Tile5ImageView.center.x = tile5EndX
        Tile5ImageView.center.y = tile5EndY
        Tile6ImageView.center.x = tile6EndX
        Tile6ImageView.center.y = tile6EndY
    }

    
    
    func scrollViewDidScroll(scrollView: UIScrollView) {
        
    }
}
