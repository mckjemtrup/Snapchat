//
//  SignInViewController.swift
//  Snapchat
//
//  Created by Michael Kjemtrup on 25/03/2017.
//  Copyright © 2017 Michael Kjemtrup. All rights reserved.
//

import UIKit
import FirebaseAuth
import Firebase

class SignInViewController: UIViewController {
    
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func enterBtnPushed(_ sender: Any) {
        FIRAuth.auth()?.signIn(withEmail: emailTextField.text!, password: passwordTextField.text!, completion: { (user, error) in
            print("we tried to sign in")
            if error != nil {
                print("Hey we have an error:\(error)")
                
                FIRAuth.auth()?.createUser(withEmail: self.emailTextField.text!, password: self.passwordTextField.text!, completion: { (user, error) in
                    print("We tried to create a user")
                    
                    if error != nil {
                    print("Hey we have an error:\(error)")
                    } else {
                    print("User created successfully")
                        self.performSegue(withIdentifier: "signInSegue", sender: nil)
                         
                        
                        
                    }
                    
                })
                
                
            } else {
                print("Signed in successfully!")
                self.performSegue(withIdentifier: "signInSegue", sender: nil)
            }
        })
        
    }
    
    
}

