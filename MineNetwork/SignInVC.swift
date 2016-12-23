//
//  ViewController.swift
//  MineNetwork
//
//  Created by 徐鸿力 on 16/12/21.
//  Copyright © 2016年 Honglix Xu. All rights reserved.
//

import UIKit
import FBSDKCoreKit
import FBSDKLoginKit
import Firebase

class SignInVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func facebookBtnTapped(_ sender: AnyObject) {
        
        let facebookLogin = FBSDKLoginManager()
        
        facebookLogin.logIn(withReadPermissions: ["email"], from: self) { (result, error) in
            if error != nil {
                print("Jess: Unable to authenticate with Facebook - \(error)")
            } else if result?.isCancelled == true {
                print("Jess: User cancelled Facebook authentication")
            } else {
                print("Jess: Successfully authenticated with FaceBokk")
                let credential = FIRFacebookAuthProvider.credential(withAccessToken: FBSDKAccessToken.current().tokenString)
                self.firebaseAuth(credential)
            }
        }
    }
    
    func firebaseAuth(_ credential: FIRAuthCredential) {
        FIRAuth.auth()?.signIn(with: credential, completion: { (user, error) in
            if error != nil {
                print("Jess: Unable to authenticate with Firebase - \(error)")
            } else {
                print("Jess: Successfully authenticated with Firebase")
            }
        })
    }
    
}

