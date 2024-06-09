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
    let movieImage = UIImageView()
    let backgroundColorView = UIView()
    var movieTextField = UITextField()
    let searchButton = UIButton()
    let underLineView = UIView()
    let movieTableView = UITableView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureHierarchy()
        configureLayout()
        configureUI()
        configureTableView()
    }
    
    func configureHierarchy() {
        view.addSubview(movieImage)
        view.addSubview(backgroundColorView)
        view.addSubview(movieTextField)
        view.addSubview(searchButton)
        view.addSubview(underLineView)
        view.addSubview(movieTableView)
    }
    
    func configureLayout() {
        movieImage.snp.makeConstraints { make in
            make.edges.equalTo(view)
        }
        
        backgroundColorView.snp.makeConstraints { make in
            make.edges.equalTo(view)
        }
        
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
            make.height.equalTo(53)
        }
        
        underLineView.snp.makeConstraints { make in
            make.top.equalTo(movieTextField.snp.bottom)
            make.leading.equalTo(movieTextField.snp.leading)
            make.trailing.equalTo(movieTextField.snp.trailing)
            make.height.equalTo(5)
        }
        
        movieTableView.snp.makeConstraints { make in
            make.top.equalTo(underLineView.snp.bottom).offset(16)
            make.horizontalEdges.bottom.equalTo(view.safeAreaLayoutGuide)
        }
    }
    
    func configureUI() {
        movieImage.image = UIImage(named: "movieImage")
        backgroundColorView.backgroundColor = UIColor.black.withAlphaComponent(0.85)
        movieTextField.backgroundColor = .darkGray
        searchButton.backgroundColor = .brown
        underLineView.backgroundColor = .black
    }
    
    func configureTableView() {
        let identifier = BoxOfficeTableViewCell.identifier
        movieTableView.rowHeight = 40
        movieTableView.delegate = self
        movieTableView.dataSource = self
        movieTableView.register(BoxOfficeTableViewCell.self, forCellReuseIdentifier: identifier)
        movieTableView.backgroundColor = .clear
    }
}

extension BoxOfficeViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 100
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let identifier = BoxOfficeTableViewCell.identifier
        let cell = tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath) as! BoxOfficeTableViewCell
        cell.backgroundColor = .clear
        return cell
    }
}
