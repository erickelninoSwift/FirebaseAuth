//
//  HomeController.swift
//  Authentification Firebase
//
//  Created by El nino Cholo on 2020/09/17.
//  Copyright © 2020 El nino Cholo. All rights reserved.
//

import UIKit
import Firebase


class HomeController:UIViewController
{
    let database = Database.database().reference().child("users")
    
    private let welcome: UILabel =
    {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .init(white: 1, alpha: 0.89)
        label.heightAnchor.constraint(equalToConstant: 60).isActive = true
        
        return label
    }()
    override func viewDidLoad(){
        super.viewDidLoad()
        configureUIView()
  
    }
    
    func configureUIView()
    {
        if Auth.auth().currentUser?.uid == nil
        {
            DispatchQueue.main.async {
                let navControler = UINavigationController(rootViewController: LoginController())
                self.navigationController?.navigationBar.barStyle = .black
                self.present(navControler, animated: true, completion: nil)
            }
            
        }else
        {
            configureviewComponent()
        }
    }
    
    func configureviewComponent()
    {
        self.view.backgroundColor = .systemBlue
        navigationController?.navigationBar.isHidden = true
        navigationController?.navigationItem.title = "Firebase Login"
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: #imageLiteral(resourceName: "baseline_arrow_back_white_24dp"), style: .plain, target: self, action: #selector(back))
        navigationItem.leftBarButtonItem?.tintColor = .white
    }
    
    
    @objc func back()
    {
        print("You have pressed the back button")
    }
 
}
