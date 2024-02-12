//
//  FeedTableViewCell.swift
//  Instagram
//
//  Created by 은서우 on 2024/02/12.
//

import UIKit
import SnapKit

class FeedTableViewCell: BaseTableViewCell {

    let profileImage = ProfileImage(frame: .zero)
    let userID = StandardButton()
    let image = UIImageView()
    let stackButtonView = UIStackView()
    let heartButton = StandardButton()
    let commentButton = StandardButton()
    let sendButton = StandardButton()
    let bookmarkButton = StandardButton()
    
    override func configureHierarchy() {
        contentView.addSubview(profileImage)
        contentView.addSubview(userID)
        contentView.addSubview(image)
        contentView.addSubview(stackButtonView)
        
        stackButtonView.addArrangedSubview(heartButton)
        stackButtonView.addArrangedSubview(commentButton)
        stackButtonView.addArrangedSubview(sendButton)
    }
    
    override func configureView() {
        userID.configuration?.title = UserDefaultsManager.shared.userID
        
        image.image = UIImage(resource: .sample)
        
        heartButton.configuration?.image = UIImage(systemName: "heart")
        commentButton.configuration?.image = UIImage(systemName: "message")
        sendButton.configuration?.image = UIImage(systemName: "paperplane")
        
        stackButtonView.axis = .horizontal
        stackButtonView.alignment = .fill
        stackButtonView.distribution = .equalSpacing
        stackButtonView.spacing = 4
    }
    
    override func configureLayout() {
        profileImage.snp.makeConstraints {
            $0.top.equalTo(contentView).offset(10)
            $0.left.equalTo(contentView).offset(10)
            $0.size.equalTo(50)
        }
        userID.snp.makeConstraints {
            $0.centerY.equalTo(profileImage)
            $0.left.equalTo(profileImage.snp.right).offset(10)
        }
        image.snp.makeConstraints {
            $0.top.equalTo(profileImage.snp.bottom).offset(10)
            $0.horizontalEdges.equalTo(contentView)
            $0.height.equalTo(image.snp.width).multipliedBy(4/3)
        }
        stackButtonView.snp.makeConstraints {
            $0.top.equalTo(image.snp.bottom)
            $0.left.bottom.equalTo(contentView)
        }
    }

}
