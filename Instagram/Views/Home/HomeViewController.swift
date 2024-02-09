//
//  HomeViewController.swift
//  Instagram
//
//  Created by 은서우 on 2024/02/08.
//

import UIKit
import SnapKit

class HomeViewController: BaseViewController {

    let tableView = UITableView()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    override func configureHierarchy() {
        view.addSubview(tableView)
    }
    
    override func configureView() {
        tableView.backgroundColor = .systemGray6
    }
    
    override func configureLayout() {
        tableView.snp.makeConstraints {
            $0.edges.equalTo(view.safeAreaLayoutGuide)
        }
    }
    

}
