//
//  DetailProfileDetailViewController.swift
//  Instagram
//
//  Created by 은서우 on 2024/02/10.
//

import UIKit
import SnapKit

class DetailProfileEditViewController: BaseViewController {
    
    let titleLabel = UILabel()
    let textfield: UITextField = {
        let view = UITextField()
        view.placeholder = "입력하세요"
        view.textColor = .gray
        return view
    } ()
    var sendDataSpace: ((String) -> Void)?
    let noticeLabel = UILabel()
    
    override func configureHierarchy() {
        view.addSubview(titleLabel)
        view.addSubview(textfield)
        view.addSubview(noticeLabel)
    }
    
    override func configureView() {
        let doneButton = UIBarButtonItem(title: "Done", style: .done, target: self, action: #selector(doneAction))
        
        // Set the right bar button item
        self.navigationItem.rightBarButtonItem = doneButton
        
        textfield.clearsOnInsertion = true
        textfield.clearButtonMode = .always
        
        noticeLabel.textAlignment = .left
        noticeLabel.numberOfLines = 0
    }
    
    @objc func doneAction() {
        sendDataSpace?(textfield.text!)
        navigationController?.popViewController(animated: true)
    }
    
    override func configureLayout() {
        titleLabel.snp.makeConstraints {
            $0.top.leading.equalTo(view.safeAreaLayoutGuide)
            $0.leading.equalTo(view).offset(10)
        }
        textfield.snp.makeConstraints {
            $0.top.equalTo(titleLabel.snp.bottom).offset(10)
            $0.horizontalEdges.equalTo(view)
        }
        noticeLabel.snp.makeConstraints {
            $0.top.equalTo(textfield.snp.bottom).offset(10)
            $0.horizontalEdges.equalTo(view)
        }
    }
}
