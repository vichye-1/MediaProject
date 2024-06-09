//
//  BoxOfficeViewController.swift
//  MediaProject
//
//  Created by 양승혜 on 6/7/24.
//

import UIKit
import Alamofire
import SnapKit

struct BoxOfficeResult: Decodable {
    let boxOfficeResult: DailyBoxOfficeResult
}

struct DailyBoxOfficeResult: Decodable {
    let dailyBoxOfficeList: [BoxOffice]
}

struct BoxOffice: Decodable {
    let rank: String
    let movieNm: String
    let openDt: String
}

class BoxOfficeViewController: UIViewController {
    let movieImage: UIImageView = {
        let mvImage = UIImageView()
        mvImage.image = UIImage(named: "movieImage")
        return mvImage
    }()
    
    let backgroundColorView: UIView = {
        let view =  UIView()
        view.backgroundColor = UIColor.black.withAlphaComponent(0.85)
        return view
    }()
   
    var movieTextField: UITextField = {
        let textField = UITextField()
        textField.backgroundColor = .clear
        textField.textColor = .white
        let attribute = NSAttributedString.Key.foregroundColor
        textField.attributedPlaceholder = NSAttributedString(string: "날짜 입력 : yyyymmdd", attributes: [attribute: UIColor.lightGray])
        return textField
    }()
    
    let searchButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .white
        button.setTitle("검색", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 15)
        return button
    }()
    
    let underLineView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        return view
    }()
    
    let movieTableView = UITableView()
    
    var movieList: [BoxOffice] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureHierarchy()
        configureLayout()
        configureTableView()
        callRequest(date: getYesterday())
        configureActions()
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
            make.height.equalTo(43)
        }
        
        searchButton.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide)
            make.leading.equalTo(movieTextField.snp.trailing).offset(20)
            make.trailing.equalTo(view.safeAreaLayoutGuide).inset(16)
            make.width.equalTo(70)
            make.height.equalTo(48)
        }
        
        underLineView.snp.makeConstraints { make in
            make.top.equalTo(movieTextField.snp.bottom)
            make.leading.equalTo(movieTextField.snp.leading)
            make.trailing.equalTo(movieTextField.snp.trailing)
            make.height.equalTo(4)
        }
        
        movieTableView.snp.makeConstraints { make in
            make.top.equalTo(underLineView.snp.bottom).offset(16)
            make.horizontalEdges.bottom.equalTo(view.safeAreaLayoutGuide)
        }
    }
        
    func configureTableView() {
        let identifier = BoxOfficeTableViewCell.identifier
        movieTableView.rowHeight = 40
        
        movieTableView.delegate = self
        movieTableView.dataSource = self
        
        movieTableView.register(BoxOfficeTableViewCell.self, forCellReuseIdentifier: identifier)
        
        movieTableView.backgroundColor = .clear
    }
    
    func callRequest(date: String) {
        let url = APIURL.movieURL + date
        AF.request(url).responseDecodable(of: BoxOfficeResult.self) { response in
            switch response.result {
            case .success(let value):
                let dailyBoxOfficeData = value.boxOfficeResult.dailyBoxOfficeList
                self.movieList = dailyBoxOfficeData
                self.movieTableView.reloadData()

            case .failure(let error):
                print(error)
            }
        }
    }
    
    func getYesterday() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyyMMdd"
        let yesterday = Calendar.current.date(byAdding: .day, value: -1, to: Date())!
        print(dateFormatter.string(from: yesterday))
        return dateFormatter.string(from: yesterday)
    }
    
    func configureActions() {
        searchButton.addTarget(self, action: #selector(searchButtonTapped), for: .touchUpInside)
    }
    
    @objc func searchButtonTapped() {
        guard let dateStr = movieTextField.text, isValidate(dateStr: dateStr) else {
            return alertAction()
        }
        callRequest(date: dateStr)
    }
    
    func isValidate(dateStr: String) -> Bool {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyyMMdd"
        return dateFormatter.date(from: dateStr) != nil
    }
    
    func alertAction() {
        let alert = UIAlertController(title: "잘못된 입력입니다", message: "yyyymmdd 형식으로 날짜를 입력하세요", preferredStyle: .alert)
        let yes = UIAlertAction(title: "확인", style: .default)
        alert.addAction(yes)
        present(alert, animated: true)
    }
}

extension BoxOfficeViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movieList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let identifier = BoxOfficeTableViewCell.identifier
        let cell = tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath) as! BoxOfficeTableViewCell
        let movie = movieList[indexPath.row]
        
        cell.rankingLabel.text = movie.rank
        cell.titleLabel.text = movie.movieNm
        cell.dateLabel.text = movie.openDt
        
        cell.backgroundColor = .clear
        cell.contentView.backgroundColor = .clear
        return cell
    }
}
