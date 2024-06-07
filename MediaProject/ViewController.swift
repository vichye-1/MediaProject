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
    let playButton = UIButton(type: .custom)
    let favoriteListButton = UIButton()
    let buttonStackView = UIStackView()
    let hotMovieLabel = UILabel()
    let hotMovie1 = UIImageView()
    let hotMovie2 = UIImageView()
    let hotmovie3 = UIImageView()
    let hotStackView = UIStackView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureHierarchy()
        configureLayout()
        configureUI()
        favoriteListButton.addTarget(self, action: #selector(nextPageButtonClicked), for: .touchUpInside)
    }
    
    @objc func nextPageButtonClicked() {
        let nextVC = SignUpViewController()
        nextVC.modalPresentationStyle = .fullScreen
        self.present(nextVC, animated: true)
    }
    
    func configureHierarchy() {
        view.addSubview(userNameLabel)
        view.addSubview(movieMainImageview)
        view.addSubview(hotMovieLabel)
        view.addSubview(buttonStackView)
        view.addSubview(hotStackView)
        buttonStackView.addArrangedSubview(playButton)
        buttonStackView.addArrangedSubview(favoriteListButton)
        hotStackView.addArrangedSubview(hotMovie1)
        hotStackView.addArrangedSubview(hotMovie2)
        hotStackView.addArrangedSubview(hotmovie3)
    }
    
    func configureLayout() {
//        userNameLabel.snp.makeConstraints { make in
//            make.top.equalTo(view.safeAreaLayoutGuide)
//            make.horizontalEdges.equalTo(view.safeAreaLayoutGuide).inset(20)
//            make.height.equalTo(40)
//        }
        
        movieMainImageview.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide)
            make.leading.equalTo(20)
            make.trailing.equalTo(-20)
            make.height.equalTo(380)
        }
        
        buttonStackView.snp.makeConstraints { make in
            make.leading.equalTo(movieMainImageview.snp.leading).inset(16)
            make.trailing.equalTo(movieMainImageview.snp.trailing).inset(16)
            make.bottom.equalTo(movieMainImageview.snp.bottom).inset(16)
            make.height.equalTo(40)
        }
        
        hotMovieLabel.snp.makeConstraints { make in
            make.top.equalTo(movieMainImageview.snp.bottom).offset(16)
            make.horizontalEdges.equalTo(view.safeAreaLayoutGuide).inset(8)
            make.height.equalTo(34)
        }
        
        hotStackView.snp.makeConstraints { make in
            make.top.equalTo(hotMovieLabel.snp.bottom).offset(16)
            make.leading.equalTo(view.safeAreaLayoutGuide).offset(20)
            make.trailing.equalTo(view.safeAreaLayoutGuide).inset(20)
            make.bottom.equalTo(view.safeAreaLayoutGuide).inset(10)
        }
    }
    
    func configureUI() {
        view.backgroundColor = .black
        
        navigationItem.title = "승혜님"
        let textAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        navigationController?.navigationBar.titleTextAttributes = textAttributes
        movieMainImageview.posterImageUI(imageName: "어벤져스엔드게임", radius: 15)
        playButton.playButtonUI()
        favoriteListButton.nextPageButtonUI()
        
        let movies = ["알라딘", "암살", "아바타"]
        let movieImageUI = [hotMovie1, hotMovie2, hotmovie3]
        
        for idx in 0..<movies.count {
            movieImageUI[idx].posterImageUI(imageName: movies[idx], radius: 7)
        }
        
        stackViewSettings(movieStackView: buttonStackView)
        stackViewSettings(movieStackView: hotStackView)
        hotMovieLabel.hotMovieLabelUI()
    }
    
    func stackViewSettings(movieStackView: UIStackView) {
        movieStackView.axis = .horizontal
        movieStackView.alignment = .fill
        movieStackView.distribution = .fillEqually
        movieStackView.spacing = 10
    }
}
