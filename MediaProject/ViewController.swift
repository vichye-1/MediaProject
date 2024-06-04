//
//  ViewController.swift
//  MediaProject
//
//  Created by 양승혜 on 6/4/24.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    let userNameLabel = UILabel()
    let movieMainImageview = UIImageView()
    let playButton = UIButton()
    let favoriteListButton = UIButton()
    let hotMovieLabel = UILabel()
    let hotMovie1 = UIImageView()
    let hotMovie2 = UIImageView()
    let hotmoview3 = UIImageView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureHierarchy()
        configureLayout()
        configureUI()
    }
    
    func configureHierarchy() {
        view.addSubview(userNameLabel)
        view.addSubview(movieMainImageview)
        view.addSubview(playButton)
        view.addSubview(favoriteListButton)
        view.addSubview(hotMovieLabel)
        view.addSubview(hotMovie1)
        view.addSubview(hotMovie2)
        view.addSubview(hotmoview3)
    }
    
    func configureLayout() {
        userNameLabel.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide)
            make.leading.equalTo(16)
            make.trailing.equalTo(-16)
            make.height.equalTo(24)
        }
        
    }
    
    func configureUI() {
        view.backgroundColor = .gray
        userNameLabel.backgroundColor = .white
        movieMainImageview.backgroundColor = .white
    }


}

