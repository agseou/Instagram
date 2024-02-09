//
//  ProfileViewController.swift
//  Instagram
//
//  Created by 은서우 on 2024/02/08.
//

import UIKit
import SnapKit

class ProfileViewController: BaseViewController {
    private var scrollView = UIScrollView()
    let contentView = UIView()
    let stackView = UIStackView()
    let profileImage : UIImageView = {
        let view = UIImageView()
        view.image = UIImage(resource: .sample)
        view.layer.cornerRadius = view.bounds.width/2
        return view
    }()
    let editProfileButton = StandardButton()

    override func viewDidLoad() {
        super.viewDidLoad()

       
    }
    
    override func configureHierarchy() {
        view.addSubview(scrollView)
        scrollView.addSubview(contentView)
        contentView.addSubview(profileImage)
        contentView.addSubview(profileImage)
        contentView.addSubview(editProfileButton)
    }
    
    override func configureView() {
        scrollView.backgroundColor = .systemGray6
        contentView.backgroundColor = .systemGray2
        
        stackView.axis = .horizontal
        stackView.alignment = .fill
        stackView.distribution = .equalSpacing
        stackView.spacing = 15
        
        editProfileButton.configuration?.title = "프로필편집"
    }
    
    override func configureLayout() {
        scrollView.snp.makeConstraints {
            $0.edges.equalTo(view.safeAreaLayoutGuide)
        }
        contentView.snp.makeConstraints {
            $0.horizontalEdges.top.equalTo(scrollView)
            $0.height.equalTo(200)
            $0.width.equalTo(scrollView)
        }
        profileImage.snp.makeConstraints {
            $0.left.top.equalTo(contentView).offset(15)
            $0.size.equalTo(100)
        }
        editProfileButton.snp.makeConstraints {
            $0.center.equalTo(contentView)
        }
    }
    

}

// MARK: - UIScrollViewDelegate
extension ProfileViewController: UIScrollViewDelegate {
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        // 만약 스크롤이 위 방향으로 움직여진다면 -> 네비게이션 바 표출
    }
    
}
