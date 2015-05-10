//
//  ViewController.swift
//  CourseChat
//
//  Created by Parambir Bajwa on 5/9/15.
//  Copyright (c) 2015 Parambir Bajwa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var classField: UITextField!
    @IBOutlet var contentField: UITextView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        classField.becomeFirstResponder()
        navigationController?.navigationBarHidden = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func cancelButton(sender: AnyObject) {
        self.performSegueWithIdentifier("cancel", sender: self)
    }

    @IBAction func submitButton(sender: AnyObject) {
        var user = PFUser.currentUser()
        
        // Make a new post
        var post = PFObject(className:"Post")
        post["title"] = classField.text
        post["body"] = contentField.text
        post["user"] = user
        post.saveInBackgroundWithBlock {
            (success: Bool, error: NSError?) -> Void in
            if (success) {
                println("we made it")
                self.performSegueWithIdentifier("success", sender: self)
            } else {
                println("failure")
            }
        }
    }

}

