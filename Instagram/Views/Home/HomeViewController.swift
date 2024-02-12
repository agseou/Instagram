//
//  HomeViewController.swift
//  Instagram
//
//  Created by 은서우 on 2024/02/08.
//

import UIKit
import SnapKit

class HomeViewController: BaseViewController {
    
    let stotyCollectionView = UICollectionView(frame: .zero, collectionViewLayout: configureCollectionViewLayout())
    let tableView = UITableView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    override func configureHierarchy() {
        view.addSubview(stotyCollectionView)
        view.addSubview(tableView)
    }
    
    override func configureView() {
        navigationItem.title = "Instagram"
        let heartButton = StandardButton()
        heartButton.configuration?.image = UIImage(systemName: "heart")
        let heartButtonItem = UIBarButtonItem(customView: heartButton)
        
        let sendButton = StandardButton()
        sendButton.configuration?.image = UIImage(systemName: "paperplane")
        let sendButtonItem =  UIBarButtonItem(customView: sendButton)
        
        navigationItem.rightBarButtonItems = [sendButtonItem, heartButtonItem]
        
        stotyCollectionView.delegate = self
        stotyCollectionView.dataSource = self
        stotyCollectionView.register(StoryCollectionViewCell.self, forCellWithReuseIdentifier: "StoryCollectionViewCell")
        stotyCollectionView.showsHorizontalScrollIndicator = false
        
        tableView.rowHeight = UITableView.automaticDimension
        tableView.tableHeaderView = stotyCollectionView
        tableView.tableHeaderView?.frame.size.height = 130
        tableView.backgroundColor = .systemGray6
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(FeedTableViewCell.self, forCellReuseIdentifier: "FeedTableViewCell")
    }
    
    override func configureLayout() {
        tableView.snp.makeConstraints {
            $0.edges.equalTo(view.safeAreaLayoutGuide)
        }
    }
    
    static func configureCollectionViewLayout() -> UICollectionViewLayout {
        let layout = UICollectionViewFlowLayout()
        let width = UIScreen.main.bounds.width/4
        layout.itemSize = CGSize(width: width, height: width * 1.2)
        layout.minimumLineSpacing = 10
        layout.minimumInteritemSpacing = 0
        layout.scrollDirection = .horizontal
        layout.sectionInset = .init(top: 0, left: 0, bottom: 0, right: 0)
        return layout
    }
    
    
}

extension HomeViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "StoryCollectionViewCell" , for: indexPath) as! StoryCollectionViewCell
        
        cell.userID.text = UserDefaultsManager.shared.userID
        
        return cell
    }
    
    
}

extension HomeViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FeedTableViewCell", for: indexPath) as! FeedTableViewCell
        
        cell.selectionStyle = .none
        
        return cell
    }
}
