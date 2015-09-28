//
//  CreateAccountViewController.swift
//  Carousel
//
//  Created by James Taylor on 9/27/15.
//  Copyright © 2015 James Taylor. All rights reserved.
//

import UIKit

class CreateAccountViewController: UIViewController {

    @IBOutlet weak var formContainer: UIView!
    
    var initialY: CGFloat!
    let offset: CGFloat = -100
    
    override func viewDidLoad() {
        super.viewDidLoad()

        initialY = formContainer.frame.origin.y
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillShow:", name: UIKeyboardWillShowNotification, object: nil)
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillHide:", name: UIKeyboardWillHideNotification, object: nil)
    }

    @IBAction func didPressBackground(sender: AnyObject) {
        formContainer.endEditing(true)
    }
    
    func keyboardWillShow(notification: NSNotification!) {
        
        self.formContainer.frame.origin = CGPoint(x: self.formContainer.frame.origin.x, y: self.initialY + self.offset)
    }
    
    func keyboardWillHide(notification: NSNotification!) {
        
        self.formContainer.frame.origin = CGPoint(x: self.formContainer.frame.origin.x, y: self.initialY)
    }
    
    

    
    @IBAction func didPressAgree(sender: UIButton) {
        sender.selected = !sender.selected
    }
    @IBAction func didPressBack(sender: AnyObject) {
        navigationController!.popViewControllerAnimated(true)
    }
}
