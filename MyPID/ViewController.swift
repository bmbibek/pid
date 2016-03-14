//
//  ViewController.swift
//  MyPID
//
//  Created by Jayprakash Kumar on 3/9/16.
//  Copyright © 2016 Jayprakash Kumar. All rights reserved.
//

import UIKit


class ViewController: UIViewController , FBSDKLoginButtonDelegate {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if (FBSDKAccessToken.currentAccessToken() == nil)
        {
            let loginView : FBSDKLoginButton = FBSDKLoginButton()
            self.view.addSubview(loginView)
            loginView.center = self.view.center
            loginView.readPermissions = ["public_profile", "email", "user_friends"]
            loginView.delegate = self
        }
        else
        {
            let masterView = self.storyboard?.instantiateViewControllerWithIdentifier("HomeView") as! HomeViewController
            self.navigationController?.pushViewController(masterView, animated: true)
        
        }
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // Facebook Delegate Methods
    
    func loginButton(loginButton: FBSDKLoginButton!, didCompleteWithResult result: FBSDKLoginManagerLoginResult!, error: NSError!) {
        print("User Logged In")
        
        if ((error) != nil)
        {
            // Process error
             print("User loin s1")
        }
        else if result.isCancelled {
            // Handle cancellations
             print("User loin s2")
        }
        else {
            // If you ask for multiple permissions at once, you
            // should check if specific permissions missing
            if result.grantedPermissions.contains("email")
            {
                let masterView = self.storyboard?.instantiateViewControllerWithIdentifier("HomeView") as! HomeViewController
                self.navigationController?.pushViewController(masterView, animated: true)
                print("User loin s3")
                // Do work
            }
        }
    }
    
    func loginButtonDidLogOut(loginButton: FBSDKLoginButton!) {
        print("User Logged Out")
    }
}

