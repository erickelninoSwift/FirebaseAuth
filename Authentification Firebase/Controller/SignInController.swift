//
//  SignInController.swift
//  Authentification Firebase
//
//  Created by El nino Cholo on 2020/09/17.
//  Copyright © 2020 El nino Cholo. All rights reserved.
//

import UIKit

class SignInController: UIViewController
{
    //MARK: separator
       var separatorView : UIView =
       {
           let view = UIView()
           view.translatesAutoresizingMaskIntoConstraints = false
           view.backgroundColor = .init(white: 1, alpha: 0.87)
           view.heightAnchor.constraint(equalToConstant: 0.75).isActive = true
           return view
       }()
       
       var separatorView2 : UIView =
       {
           let view = UIView()
           view.translatesAutoresizingMaskIntoConstraints = false
           view.backgroundColor = .init(white: 1, alpha: 0.87)
           view.heightAnchor.constraint(equalToConstant: 0.75).isActive = true
           return view
       }()
    
    var separatorView3 : UIView =
          {
              let view = UIView()
              view.translatesAutoresizingMaskIntoConstraints = false
              view.backgroundColor = .init(white: 1, alpha: 0.87)
              view.heightAnchor.constraint(equalToConstant: 0.75).isActive = true
              return view
          }()
       
       //MARK: properties
       
       
       
       let usernameImage: UIImageView =
       {
           let image = UIImageView()
           image.translatesAutoresizingMaskIntoConstraints = false
           image.image = #imageLiteral(resourceName: "ic_mail_outline_white_2x-1").withRenderingMode(.alwaysOriginal)
           image.contentMode = .scaleAspectFit
           image.clipsToBounds = true
           return image
       }()
    
    
       
       let passwordImage: UIImageView =
       {
           let image = UIImageView()
           image.translatesAutoresizingMaskIntoConstraints = false
           image.image = #imageLiteral(resourceName: "ic_lock_outline_white_2x").withRenderingMode(.alwaysOriginal)
           image.contentMode = .scaleAspectFit
           image.clipsToBounds = true
           return image
       }()
    
    let usernameprofile: UIImageView =
    {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = #imageLiteral(resourceName: "ic_person_outline_white_2x").withRenderingMode(.alwaysOriginal)
        image.contentMode = .scaleAspectFit
        image.clipsToBounds = true
        return image
    }()
       
       //MARK: textfields properties
       
       var usernamatextfield: UITextField =
       {
           let textfield = UITextField()
           textfield.translatesAutoresizingMaskIntoConstraints = false
           let mytitle = NSAttributedString(string: "Email", attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])
           textfield.attributedPlaceholder = mytitle
           textfield.clearButtonMode = .always
           textfield.tintColor = .white
           textfield.textColor = .init(white: 1, alpha: 0.80)
           
           return textfield
       }()
    
    var usernameprofilename: UITextField =
         {
             let textfield = UITextField()
             textfield.translatesAutoresizingMaskIntoConstraints = false
             let mytitle = NSAttributedString(string: "Username", attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])
             textfield.attributedPlaceholder = mytitle
             textfield.clearButtonMode = .always
             textfield.tintColor = .white
             textfield.textColor = .init(white: 1, alpha: 0.80)
             
             return textfield
         }()
       
       var passwordTextfield: UITextField =
       {
           let textfield = UITextField()
           textfield.translatesAutoresizingMaskIntoConstraints = false
           let mytitle = NSAttributedString(string: "Password", attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])
           textfield.attributedPlaceholder = mytitle
           textfield.clearButtonMode = .always
           textfield.tintColor = .white
           textfield.textContentType = .password
           textfield.isSecureTextEntry = true
           textfield.textColor = .init(white: 1, alpha: 0.80)
           return textfield
       }()
    
       //MARK: logo
       
       let logimage: UIImageView =
       {
           let logo = UIImageView()
           logo.translatesAutoresizingMaskIntoConstraints = false
           logo.image = #imageLiteral(resourceName: "firebase-logo").withRenderingMode(.alwaysOriginal)
           logo.contentMode  = .scaleAspectFit
           logo.clipsToBounds = true
           
           return logo
       }()
       
       //MARK: username field
       
       lazy var usenameField: UIView =
       {
           let view = UIView()
           view.translatesAutoresizingMaskIntoConstraints = false
           view.heightAnchor.constraint(equalToConstant: 60).isActive = true
           view.addSubview(usernameImage)
           usernameImage.alpha = 0.80
           usernameImage.topAnchor.constraint(equalTo: view.topAnchor, constant: 5).isActive = true
           usernameImage.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
           usernameImage.heightAnchor.constraint(equalToConstant: 40).isActive = true
           usernameImage.widthAnchor.constraint(equalToConstant: 40).isActive = true
           
           //textfield
           view.addSubview(usernamatextfield)
           usernamatextfield.leftAnchor.constraint(equalTo: usernameImage.rightAnchor, constant: 12).isActive = true
           usernamatextfield.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -8).isActive = true
           usernamatextfield.centerYAnchor.constraint(equalTo:  usernameImage.centerYAnchor).isActive = true
           
           
           //separator
           
           view.addSubview(separatorView2)
           separatorView2.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
           separatorView2.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 8).isActive = true
           separatorView2.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
           return view
       }()
    
    
    lazy var userprofile: UIView =
    {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.heightAnchor.constraint(equalToConstant: 60).isActive = true
        view.addSubview(usernameprofile)
        usernameprofile.alpha = 0.80
        usernameprofile.topAnchor.constraint(equalTo: view.topAnchor, constant: 5).isActive = true
        usernameprofile.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        usernameprofile.heightAnchor.constraint(equalToConstant: 40).isActive = true
        usernameprofile.widthAnchor.constraint(equalToConstant: 40).isActive = true
        
        //textfield
        view.addSubview(usernameprofilename)
        usernameprofilename.leftAnchor.constraint(equalTo: usernameprofile.rightAnchor, constant: 12).isActive = true
        usernameprofilename.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -8).isActive = true
        usernameprofilename.centerYAnchor.constraint(equalTo:  usernameprofile.centerYAnchor).isActive = true
        
        
        //separator
        
        view.addSubview(separatorView3)
        separatorView3.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        separatorView3.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 8).isActive = true
        separatorView3.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        return view
    }()
       //MARK: passwordfield
       
       lazy var password: UIView =
       {
           let view = UIView()
           view.translatesAutoresizingMaskIntoConstraints = false
           view.heightAnchor.constraint(equalToConstant: 60).isActive = true
           view.addSubview(passwordImage)
           passwordImage.alpha = 0.80
           passwordImage.topAnchor.constraint(equalTo: view.topAnchor, constant: 5).isActive = true
           passwordImage.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
           passwordImage.heightAnchor.constraint(equalToConstant: 40).isActive = true
           passwordImage.widthAnchor.constraint(equalToConstant: 40).isActive = true
           
           //textfield section
           
           view.addSubview(passwordTextfield)
           passwordTextfield.leftAnchor.constraint(equalTo: passwordImage.rightAnchor, constant: 12).isActive = true
           passwordTextfield.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -8).isActive = true
           passwordTextfield.centerYAnchor.constraint(equalTo: passwordImage.centerYAnchor).isActive = true
                  
           //separator
           
           view.addSubview(separatorView)
           separatorView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
           separatorView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 8).isActive = true
           separatorView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
          
           
           return view
       }()
       
       //MARK: BUTTONS
       
       let createAccount: UIButton =
       {
           let button = UIButton()
           button.translatesAutoresizingMaskIntoConstraints = false
           button.setTitle("CREATE ACCOUNT", for: .normal)
           button.backgroundColor = .white
           button.setTitleColor(.systemBlue, for: .normal)
           button.layer.cornerRadius = 5
           button.titleLabel?.font = UIFont.systemFont(ofSize: 18)
           button.heightAnchor.constraint(equalToConstant: 60).isActive = true
           button.addTarget(self, action: #selector(createnow), for: .touchUpInside)
           
           return button
       }()
       
       
       let login: UIButton =
       {
           let button = UIButton()
           button.translatesAutoresizingMaskIntoConstraints = false
           let firstring = NSMutableAttributedString(string: "You remember password? ", attributes: [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 15),NSAttributedString.Key.foregroundColor: UIColor.white])
           firstring.append(NSAttributedString(string: "Log In", attributes: [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 16), NSAttributedString.Key.foregroundColor: UIColor.white]))
           button.setAttributedTitle(firstring, for: .normal)
           button.addTarget(self, action: #selector(loginAccount), for: .touchUpInside)
           
           return button
       }()
       
       
       //MARK: objc functions
       
       @objc func loginAccount()
       {
           let LoginVC = LoginController()
           navigationController?.popToViewController(LoginVC, animated: true)
       }
       
       @objc func createnow()
       {
           print("create account")
       }
       //MARK: viewdidload function
       
       override func viewDidLoad() {
           super.viewDidLoad()
           configureUI()
       }
       
       //MARK: configuration UI
       
       func configureUI()
       {
           navigationController?.navigationBar.barStyle = .black
           navigationController?.navigationBar.isHidden = true
           view.backgroundColor = .systemBlue
           
          
           
           view.addSubview(logimage)
           view.addSubview(userprofile)
           view.addSubview(usenameField)
           view.addSubview(password)
           view.addSubview(createAccount)
           view.addSubview(login)
          
           logimage.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 25).isActive = true
           logimage.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
           
           usenameField.topAnchor.constraint(equalTo: logimage.bottomAnchor, constant: 30).isActive = true
           usenameField.leftAnchor.constraint(equalTo: view.layoutMarginsGuide.leftAnchor, constant: 30).isActive = true
           usenameField.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -30).isActive = true
        
           userprofile.topAnchor.constraint(equalTo: usenameField.bottomAnchor, constant: 10).isActive = true
           userprofile.leftAnchor.constraint(equalTo: view.layoutMarginsGuide.leftAnchor, constant: 30).isActive = true
           userprofile.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -30).isActive = true
         
           password.topAnchor.constraint(equalTo: userprofile.bottomAnchor, constant: 10).isActive = true
           password.leftAnchor.constraint(equalTo: view.layoutMarginsGuide.leftAnchor, constant: 30).isActive = true
           password.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -30).isActive = true
           
           createAccount.topAnchor.constraint(equalTo: password.bottomAnchor, constant: 10).isActive = true
           createAccount.leftAnchor.constraint(equalTo: view.layoutMarginsGuide.leftAnchor, constant: 30).isActive = true
           createAccount.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -30).isActive = true
           
           login.bottomAnchor.constraint(equalTo: view.bottomAnchor,constant: -20).isActive = true
           login.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
           
       }
}
