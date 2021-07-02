//
//  LoginViewController.swift
//  chatAppDemo_Rahul
//
//  Created by Akarsh Agrawal on 29/06/21.
//

import UIKit

class LoginViewController: UIViewController {
    
    private let imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "login")
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    private let textField: UITextField = {
        let textField = UITextField()
        textField.text = "Some Text here"
        return textField
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Log In"
        view.backgroundColor = .white
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Register",
                                                            style: .done,
                                                            target: self,
                                                            action: #selector(didTapRegister))
        
        view.addSubview(imageView)
        view.addSubview(textField)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        let size = view.frame.size.width/3
        imageView.frame = CGRect(x: (view.frame.size.width-size)/2, y: 100, width: size, height: size)
        
        textField.frame = CGRect(x: (view.frame.size.width-size)/2, y: size + 100, width: size, height: size)
        
    }
    
    
    
    @objc private func didTapRegister() {
        let vc = RegisterViewController()
        vc.title = "Create Account"
        navigationController?.pushViewController(vc, animated: true)
    }

}
