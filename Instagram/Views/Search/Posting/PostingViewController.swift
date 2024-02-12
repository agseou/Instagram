//
//  PostingViewController.swift
//  Instagram
//
//  Created by 은서우 on 2024/02/12.
//

import UIKit
import SnapKit
import PhotosUI

class PostingViewController: BaseViewController {

    let image = UIImageView()
    let picker = UIImagePickerController()
                
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    override func configureView() {
        navigationItem.title = "새 게시물"
        
        picker.sourceType = .photoLibrary
    }
    
    override func configureHierarchy() {
        view.addSubview(image)
    }
    
    override func configureLayout() {
        image.snp.makeConstraints {
            $0.horizontalEdges.top.equalTo(view.safeAreaLayoutGuide)
            $0.height.equalTo(UIScreen.main.bounds.width)
        }
    }

}

extension PostingViewController: UIImagePickerControllerDelegate {
    
}
