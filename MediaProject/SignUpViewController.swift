//
//  SignUpViewController.swift
//  MediaProject
//
//  Created by 양승혜 on 6/4/24.
//

import UIKit
import SnapKit

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
        view.addSubview(logoLabel)
        view.addSubview(emailTextField)
        view.addSubview(passwordTextField)
        view.addSubview(nicknameTextField)
        view.addSubview(locationTextField)
        view.addSubview(codeTextField)
        view.addSubview(signUpButton)
        view.addSubview(extraInfoLabel)
        view.addSubview(redSwitch)
    }
    
    func configureLayout() {
        logoLabel.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide).offset(40)
            make.horizontalEdges.equalTo(view.safeAreaLayoutGuide).inset(20)
            make.height.equalTo(60)
        }
        
        emailTextField.snp.makeConstraints { make in
            make.top.equalTo(logoLabel.snp.bottom).offset(150)
            make.horizontalEdges.equalTo(view.safeAreaLayoutGuide).inset(34)
            make.height.equalTo(34)
        }
        
        passwordTextField.snp.makeConstraints { make in
            make.top.equalTo(emailTextField.snp.bottom).offset(16)
            make.horizontalEdges.equalTo(view.safeAreaLayoutGuide).inset(34)
            make.height.equalTo(34)
        }
        
        nicknameTextField.snp.makeConstraints { make in
            make.top.equalTo(passwordTextField.snp.bottom).offset(16)
            make.horizontalEdges.equalTo(view.safeAreaLayoutGuide).inset(34)
            make.height.equalTo(34)
        }
        
        locationTextField.snp.makeConstraints { make in
            make.top.equalTo(nicknameTextField.snp.bottom).offset(16)
            make.horizontalEdges.equalTo(view.safeAreaLayoutGuide).inset(34)
            make.height.equalTo(34)
        }
        
        codeTextField.snp.makeConstraints { make in
            make.top.equalTo(locationTextField.snp.bottom).offset(16)
            make.horizontalEdges.equalTo(view.safeAreaLayoutGuide).inset(34)
            make.height.equalTo(34)
        }
    }
    
    func configureUI() {
        view.backgroundColor = .black
        
        logoLabel.backgroundColor = .systemOrange
        
        emailTextField.backgroundColor = .red
        passwordTextField.backgroundColor = .orange
        nicknameTextField.backgroundColor = .yellow
        locationTextField.backgroundColor = .green
        codeTextField.backgroundColor = .blue
        
        signUpButton.backgroundColor = .white
    }
}
