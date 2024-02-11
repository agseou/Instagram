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
    let profileImage = ProfileImage(frame: .zero)
    let nameLabel = UILabel()
    let editProfileButton = StandardButton()
    let shareProfileButton = StandardButton()
    
    let profileInfo: [String:Int] = ["게시물": 20, "팔로워": 190, "팔로잉": 223]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        editProfileButton.addTarget(self, action: #selector(tapEditProfileButton), for: .touchUpInside)
    }
    
    @objc private func tapEditProfileButton() {
        self.navigationController?.pushViewController(ProfileEditViewController(), animated: true)
    }
    
    override func configureHierarchy() {
        view.addSubview(scrollView)
        scrollView.addSubview(contentView)
        contentView.addSubview(stackView)
        contentView.addSubview(profileImage)
        contentView.addSubview(nameLabel)
        contentView.addSubview(editProfileButton)
        contentView.addSubview(shareProfileButton)
        
        for (label, number) in profileInfo {
            let subStackView = createSubStackView(number: number, label: label)
            stackView.addArrangedSubview(subStackView)
        }
    }
    
    override func configureView() {
        scrollView.backgroundColor = .systemGray6
        //contentView.backgroundColor = .systemGray2
        
        stackView.axis = .horizontal
        stackView.alignment = .fill
        stackView.distribution = .equalSpacing
        stackView.spacing = 10
        
        nameLabel.text = "서우"
        
        editProfileButton.configuration?.title = "프로필편집"
        shareProfileButton.configuration?.title = "프로필 공유"
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
        stackView.snp.makeConstraints {
            $0.left.equalTo(profileImage.snp.right).offset(40)
            $0.right.equalTo(scrollView).inset(40)
            $0.centerY.equalTo(profileImage)
        }
        nameLabel.snp.makeConstraints {
            $0.top.equalTo(profileImage.snp.bottom)
            $0.leading.equalTo(profileImage)
        }
        editProfileButton.snp.makeConstraints {
            $0.top.equalTo(nameLabel.snp.bottom).offset(10)
            $0.leading.equalTo(contentView).offset(30)
        }
        shareProfileButton.snp.makeConstraints {
            $0.top.equalTo(nameLabel.snp.bottom).offset(10)
            $0.leading.equalTo(editProfileButton.snp.trailing).offset(8)
        }
        
    }
    
    private func createSubStackView(number: Int, label: String) -> UIStackView {
        let subStackView = UIStackView()
        subStackView.axis = .vertical
        subStackView.alignment = .center
        subStackView.distribution = .fillProportionally
        subStackView.spacing = 0
        
        let numLabel = UILabel()
        numLabel.text = String(number)
        let explainLabel = UILabel()
        explainLabel.text = label
        
        subStackView.addArrangedSubview(numLabel)
        subStackView.addArrangedSubview(explainLabel)
        
        return subStackView
    }
    
}

// MARK: - UIScrollViewDelegate
extension ProfileViewController: UIScrollViewDelegate {
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        // 만약 스크롤이 위 방향으로 움직여진다면 -> 네비게이션 바 표출
    }
    
}
