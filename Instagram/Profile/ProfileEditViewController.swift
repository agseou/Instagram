//
//  ProfileEditViewController.swift
//  Instagram
//
//  Created by 은서우 on 2024/02/10.
//

import UIKit
import SnapKit

class ProfileEditViewController: BaseViewController {
    
    let tableView = UITableView()
    
    override func configureHierarchy() {
        view.addSubview(tableView)
    }
    
    override func configureView() {
        tableView.register(ProfileEditTableViewCell.self, forCellReuseIdentifier: "ProfileEditTableViewCell")
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    override func configureLayout() {
        tableView.snp.makeConstraints {
            $0.edges.equalTo(view.safeAreaLayoutGuide)
        }
    }
    
}

extension ProfileEditViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return profileSetting.allCases.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ProfileEditTableViewCell", for: indexPath) as! ProfileEditTableViewCell
        
        cell.editLabel.text = profileSetting.allCases[indexPath.row].title
        cell.subLabel.text = profileSetting.allCases[indexPath.row].data
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = DetailProfileEditViewController()
        
        vc.titleLabel.text = profileSetting.allCases[indexPath.row].title
        vc.noticeLabel.text = profileSetting.allCases[indexPath.row].notice
        vc.sendDataSpace = { value in
            profileSetting.allCases[indexPath.row].setData(value)
            tableView.reloadData()
        }
        
        self.navigationController?.pushViewController(vc, animated: true)
        
    }
}
