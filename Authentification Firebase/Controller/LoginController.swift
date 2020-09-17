//
//  LoginController.swift
//  Authentification Firebase
//
//  Created by El nino Cholo on 2020/09/17.
//  Copyright © 2020 El nino Cholo. All rights reserved.
//

import UIKit

class LoginController : UIViewController
{
    //MARK: properties
    let logimage: UIImageView =
    {
        let logo = UIImageView()
        logo.translatesAutoresizingMaskIntoConstraints = false
        logo.image = #imageLiteral(resourceName: "firebase-logo").withRenderingMode(.alwaysOriginal)
        logo.contentMode  = .scaleAspectFit
        logo.clipsToBounds = true
        
        return logo
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    
    func configureUI()
    {
        navigationController?.navigationBar.barStyle = .black
        navigationController?.navigationBar.isHidden = true
        self.view.backgroundColor = .systemBlue
        
        self.view.addSubview(logimage)
        
        logimage.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 25).isActive = true
        logimage.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
}
