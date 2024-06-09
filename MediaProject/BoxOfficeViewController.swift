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
        view.addSubview(movieTextField)
        view.addSubview(searchButton)
        view.addSubview(underLineView)
        view.addSubview(movieTableView)
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
        view.backgroundColor = .white
        movieTextField.backgroundColor = .darkGray
        searchButton.backgroundColor = .brown
        underLineView.backgroundColor = .black
        movieTableView.backgroundColor = .darkGray
    }
    
    func configureTableView() {
        let identifier = BoxOfficeTableViewCell.identifier
        movieTableView.rowHeight = 40
        movieTableView.delegate = self
        movieTableView.dataSource = self
        movieTableView.register(BoxOfficeTableViewCell.self, forCellReuseIdentifier: identifier)
    }
}

extension BoxOfficeViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 100
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let identifier = BoxOfficeTableViewCell.identifier
        let cell = tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath) as! BoxOfficeTableViewCell
        return cell
    }
}
