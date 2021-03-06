//
//  SignInViewController.swift
//  Carousel
//
//  Created by James Taylor on 9/23/15.
//  Copyright © 2015 James Taylor. All rights reserved.
//

import UIKit

class SignInViewController: UIViewController {
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBAction func backButton(sender: AnyObject) {
        navigationController!.popViewControllerAnimated(true)
    }
    
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
    
    
    @IBAction func didPressSignIn(sender: AnyObject) {
        
        if emailTextField.text == "email@domain.com" && passwordTextField.text == "password" {

            let alertController = UIAlertController(title: "Signing in...", message: nil, preferredStyle: .Alert)
            presentViewController(alertController, animated: true) {
                // optional code for what happens after the alert controller has finished presenting
            }
            delay(2) {
                alertController.dismissViewControllerAnimated(true, completion: nil)
                self.performSegueWithIdentifier("loginSegue", sender: nil)
            }
            
        } else if emailTextField.text == "" || passwordTextField.text == "" {
            let alertController = UIAlertController(title: "Email and Password Required", message: "Please enter your email and password", preferredStyle: .Alert)
            
            let OKAction = UIAlertAction(title: "OK", style: .Default) { (action) in
                // handle response here.
            }
            alertController.addAction(OKAction)
            presentViewController(alertController, animated: true) {
            }
            
        } else {

            let alertController = UIAlertController(title: "Signing in...", message: nil, preferredStyle: .Alert)
            presentViewController(alertController, animated: true) {
            }
            delay(2) {

                alertController.dismissViewControllerAnimated(false, completion: nil)

                let alertController = UIAlertController(title: "Sign In Failed", message: "Incorrect email or password", preferredStyle: .Alert)
                
                let OKAction = UIAlertAction(title: "OK", style: .Default) { (action) in
                }
                alertController.addAction(OKAction)
                self.presentViewController(alertController, animated: true) {
                }
            }
        }
        
    }
    func delay(delay:Double, closure:()->()) {
        dispatch_after(
            dispatch_time(
                DISPATCH_TIME_NOW,
                Int64(delay * Double(NSEC_PER_SEC))
            ),
            dispatch_get_main_queue(), closure)
    }
    

}
