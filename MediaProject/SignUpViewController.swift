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
    let goBackButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureHierarchy()
        configureLayout()
        configureUI()
        goBackButton.addTarget(self, action: #selector(backButtonClicked), for: .touchUpInside)
    }
    
    @objc func backButtonClicked() {
        dismiss(animated: true)
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
        view.addSubview(goBackButton)
    }
    
    func configureLayout() {
        logoLabel.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide).offset(40)
            make.horizontalEdges.equalTo(view.safeAreaLayoutGuide).inset(20)
            make.height.equalTo(60)
        }
        
        emailTextField.snp.makeConstraints { make in
            make.top.equalTo(logoLabel.snp.bottom).offset(130)
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
        
        signUpButton.snp.makeConstraints { make in
            make.top.equalTo(codeTextField.snp.bottom).offset(16)
            make.horizontalEdges.equalTo(view.safeAreaLayoutGuide).inset(34)
            make.height.equalTo(48)
        }
        
        extraInfoLabel.snp.makeConstraints { make in
            make.top.equalTo(signUpButton.snp.bottom).offset(20)
            make.leading.equalTo(view.safeAreaLayoutGuide).offset(34)
            make.height.equalTo(34)
            make.width.equalTo(150)
        }
        
        redSwitch.snp.makeConstraints { make in
            make.top.equalTo(signUpButton.snp.bottom).offset(20)
            make.trailing.equalTo(view.safeAreaLayoutGuide).inset(34)
        }
        
        goBackButton.snp.makeConstraints { make in
            make.horizontalEdges.equalTo(view.safeAreaLayoutGuide).inset(34)
            make.bottom.equalTo(view.safeAreaLayoutGuide).inset(34)
            make.height.equalTo(48)
        }
    }
    
    func configureUI() {
        let placeholders = ["이메일 주소 또는 전화번호", "비밀번호", "닉네임", "위치", "추천 코드 입력"]
        view.backgroundColor = .black
        
        logoLabel.logoLabelUI()
        
        emailTextField.signUpTextField(placeholders[0])
        passwordTextField.signUpTextField(placeholders[1])
        nicknameTextField.signUpTextField(placeholders[2])
        locationTextField.signUpTextField(placeholders[3])
        codeTextField.signUpTextField(placeholders[4])
        
        signUpButton.signUpButtonUI()
        
        extraInfoLabel.extraInfoLabel()
        
        redSwitch.onTintColor = .red
        
        goBackButton.goBackButton()
    }
}
