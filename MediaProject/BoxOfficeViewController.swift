//
//  BoxOfficeViewController.swift
//  MediaProject
//
//  Created by 양승혜 on 6/7/24.
//

import UIKit
import Alamofire
import SnapKit

class BoxOfficeViewController: UIViewController {
    
    var movieTextField = UITextField()
    let searchButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureHierarchy()
        configureLayout()
        configureUI()
    }
    
    func configureHierarchy() {
        view.addSubview(movieTextField)
        view.addSubview(searchButton)
    }
    
    func configureLayout() {
        movieTextField.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide)
            make.leading.equalTo(view.safeAreaLayoutGuide).offset(16)
            make.height.equalTo(48)
        }
        
        searchButton.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide)
            make.leading.equalTo(movieTextField.snp.trailing).offset(8)
            make.trailing.equalTo(view.safeAreaLayoutGuide).inset(16)
            make.width.equalTo(70)
            make.height.equalTo(48)
        }
    }
    
    func configureUI() {
        view.backgroundColor = .white
        movieTextField.backgroundColor = .darkGray
        searchButton.backgroundColor = .brown
    }
    

}
