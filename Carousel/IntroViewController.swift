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
    
//    var tile1EndX = CGFloat(47)
//    var tile1EndY = CGFloat(750)
//    var tile1Scale = CGFloat(1.0)
//    var tile2EndX = CGFloat(200)
//    var tile2EndY = CGFloat(750)
//    var tile2Scale = CGFloat(0.5)
//    var tile3EndX = CGFloat(200)
//    var tile3EndY = CGFloat(827)
//    var tile3Scale = CGFloat(0.5)
//    var tile4EndX = CGFloat(47)
//    var tile4EndY = CGFloat(903)
//    var tile4Scale = CGFloat(0.5)
//    var tile5EndX = CGFloat(123)
//    var tile5EndY = CGFloat(904)
//    var tile5Scale = CGFloat(0.5)
//    var tile6EndX = CGFloat(200)
//    var tile6EndY = CGFloat(904)
//    var tile6Scale = CGFloat(0.5)

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scrollView.contentSize = imageView.image!.size
        scrollView.delegate = self

        //scrollView.sendSubviewToBack(imageView)
        
    }

    
    
    func scrollViewDidScroll(scrollView: UIScrollView) {
        
        // content offset: 0 -> 568
        let offset = CGFloat(scrollView.contentOffset.y)
        
        // Tile 1
        
        let t1x = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: -30, r2Max: 0)
        let t1y = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: -285, r2Max: 0)
        let t1scale = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: 1, r2Max: 1)
        let t1rotation = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: -10, r2Max: 0)
        
        Tile1ImageView.transform = CGAffineTransformMakeTranslation(CGFloat(t1x), CGFloat(t1y))
        Tile1ImageView.transform = CGAffineTransformScale(Tile1ImageView.transform, t1scale, t1scale)
        Tile1ImageView.transform = CGAffineTransformRotate(Tile1ImageView.transform, CGFloat(Double(t1rotation) * M_PI/180))
        
        
        // Tile 2
        
        let t2x = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: 75, r2Max: 0)
        let t2y = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: -240, r2Max: 0)
        let t2scale = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: 1.65, r2Max: 1)
        let t2rotation = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: -10, r2Max: 0)
        
        Tile2ImageView.transform = CGAffineTransformMakeTranslation(CGFloat(t2x), CGFloat(t2y))
        Tile2ImageView.transform = CGAffineTransformScale(Tile2ImageView.transform, t2scale, t2scale)
        Tile2ImageView.transform = CGAffineTransformRotate(Tile2ImageView.transform, CGFloat(Double(t2rotation) * M_PI/180))
 
        
        // Tile 3
        
        let t3x = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: -66, r2Max: 0)
        let t3y = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: -375, r2Max: 0)
        let t3scale = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: 1.7, r2Max: 1)
        let t3rotation = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: -10, r2Max: 0)
        
        Tile3ImageView.transform = CGAffineTransformMakeTranslation(CGFloat(t3x), CGFloat(t3y))
        Tile3ImageView.transform = CGAffineTransformScale(Tile3ImageView.transform, t3scale, t3scale)
        Tile3ImageView.transform = CGAffineTransformRotate(Tile3ImageView.transform, CGFloat(Double(t3rotation) * M_PI/180))
 
        
        // Tile 4
        
        let t4x = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: 10, r2Max: 0)
        let t4y = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: -358, r2Max: 0)
        let t4scale = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: 1.6, r2Max: 1)
        let t4rotation = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: 10, r2Max: 0)
        
        Tile4ImageView.transform = CGAffineTransformMakeTranslation(CGFloat(t4x), CGFloat(t4y))
        Tile4ImageView.transform = CGAffineTransformScale(Tile4ImageView.transform, t4scale, t4scale)
        Tile4ImageView.transform = CGAffineTransformRotate(Tile4ImageView.transform, CGFloat(Double(t4rotation) * M_PI/180))
 
        
        // Tile 5
        
        let t5x = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: -100, r2Max: 0)
        let t5y = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: -380, r2Max: 0)
        let t5scale = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: 1.65, r2Max: 1)
        let t5rotation = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: 10, r2Max: 0)
        
        Tile5ImageView.transform = CGAffineTransformMakeTranslation(CGFloat(t5x), CGFloat(t5y))
        Tile5ImageView.transform = CGAffineTransformScale(Tile5ImageView.transform, t5scale, t5scale)
        Tile5ImageView.transform = CGAffineTransformRotate(Tile5ImageView.transform, CGFloat(Double(t5rotation) * M_PI/180))
 
        
        // Tile 6
        
        let t6x = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: 115, r2Max: 0)
        let t6y = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: -400, r2Max: 0)
        let t6scale = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: 1.65, r2Max: 1)
        let t6rotation = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: -10, r2Max: 0)
        
        Tile6ImageView.transform = CGAffineTransformMakeTranslation(CGFloat(t6x), CGFloat(t6y))
        Tile6ImageView.transform = CGAffineTransformScale(Tile6ImageView.transform, t6scale, t6scale)
        Tile6ImageView.transform = CGAffineTransformRotate(Tile6ImageView.transform, CGFloat(Double(t6rotation) * M_PI/180))
        
        
    }
}
