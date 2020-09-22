//
//  validation.swift
//  Authentification Firebase
//
//  Created by El nino Cholo on 2020/09/21.
//  Copyright © 2020 El nino Cholo. All rights reserved.
//

import Foundation

class validation
{
    static var isvalid = validation()
    
    func loginvalidation(username: String , password: String) -> Bool
    {
        var valid = false
        
        if username != "" && password != ""
        {
            valid = true
        }else
        {
            valid = false
        }
        return valid
    }
    
    func signupvalidation(username: String, email: String , password: String) -> Bool
    {
        var valid = false
        
        if username != "" && email != "" && password != ""
        {
            valid = true
        }else
        {
            valid = false
        }
        return valid
    
    }
    
}
