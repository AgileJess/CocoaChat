//
//  LoginViewController.swift
//  CocoaChat
//
//  Created by Jessica on 11/5/16.
//  Copyright © 2016 Cocoa Academy. All rights reserved.
//

import UIKit
import Firebase
import GoogleSignIn



@objc(LoginViewController)
class LoginViewController: UIViewController, UITextFieldDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func unwindLogout(segue:UIStoryboardSegue) {
        
    }

    @IBAction func onAnonymousTapped(_ sender: UIButton) {
        print("AnonymousTapped")
        
        FIRAuth.auth()?.signInAnonymously(completion: { (user, error) in
            
            if error != nil {
                print(error as Any)
                return
            }
            
            self.performSegue(withIdentifier: "showChat", sender: self)
        })
        
    }
    
    @IBAction func onGoogleTapped(_ sender: Any) {
        print("GoogleTapped")
        performSegue(withIdentifier: "showChat", sender: self)        
    }
}
