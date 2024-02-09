//
//  BaseViewController.swift
//  Instagram
//
//  Created by 은서우 on 2024/02/08.
//

import UIKit

class BaseViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white

        configureHierarchy()
        configureView()
        configureLayout()
    }

    func configureHierarchy() { }
    func configureView() { }
    func configureLayout() { }

}
