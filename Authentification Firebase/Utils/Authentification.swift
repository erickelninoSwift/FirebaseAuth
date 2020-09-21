//
//  Authentification.swift
//  Authentification Firebase
//
//  Created by El nino Cholo on 2020/09/20.
//  Copyright © 2020 El nino Cholo. All rights reserved.
//

import UIKit
import FirebaseAuth

class AuthentificationSignIn
{
     static var system = AuthentificationSignIn()
    
    func creatUser(username:String , email: String , password: String, completion: @escaping AuthDataResultCallback)
    {
       
            Auth.auth().createUser(withEmail: email, password: password, completion: completion)
    }
    
    func signInUser(username: String , password: String , completion: @escaping AuthDataResultCallback)
    {
          Auth.auth().signIn(withEmail: username, password: password, completion: completion)
        
    }
   
}

extension UIViewController
{
    
       func alertmessage(title: String , message: String, buttonname: String, handler: ((UIAlertAction) -> Void)?)
       {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .actionSheet)
        let action = UIAlertAction(title: buttonname, style: .destructive)
           
           alert.addAction(action)
           self.present(alert, animated: true, completion: nil)
       }
}
