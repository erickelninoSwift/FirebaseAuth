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
        label.textColor = .white
        label.tintColor = .white
        label.text = "WELCOME"
        label.font = UIFont.boldSystemFont(ofSize: 18)
        label.textAlignment = .center
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
                navControler.navigationBar.barStyle = .black
                navControler.modalPresentationStyle = .fullScreen
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
        
        navigationController?.navigationBar.barStyle = .black
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: #imageLiteral(resourceName: "baseline_arrow_back_white_24dp"), style: .plain, target: self, action: #selector(signout))
      
        navigationItem.leftBarButtonItem?.tintColor = .white
        navigationItem.title = "Firebase Login"
        view.addSubview(welcome)
        welcome.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        welcome.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 25).isActive = true
        welcome.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -25).isActive = true
    }
    
    
    @objc func signout()
    {
        do
        {
            try Auth.auth().signOut()
            
        }catch let error as NSError
        {
            print("there was an error \(error.localizedDescription)")
        }
    }
    
    func getAllusers()
    {
        
    }
 
}
