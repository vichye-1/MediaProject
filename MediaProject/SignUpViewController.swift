//
//  SignUpViewController.swift
//  MediaProject
//
//  Created by 양승혜 on 6/4/24.
//

import UIKit

class SignUpViewController: UIViewController {

    let logoLabel = UILabel()
    let emailTextField = UITextField()
    let passwordTextField = UITextField()
    let nicknameTextField = UITextField()
    let locationTextField = UITextField()
    let codeTextField = UITextField()
    let signUpButton = UIButton()
    let extraInfoLabel = UILabel()
    let redSwitch = UISwitch()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureHierarchy()
        configureLayout()
        configureUI()
    }
    
    func configureHierarchy() {
        
    }
    
    func configureLayout() {
        
    }
    
    func configureUI() {
        view.backgroundColor = .black
    }
}
