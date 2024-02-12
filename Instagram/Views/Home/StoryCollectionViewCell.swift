//
//  StoryCollectionViewCell.swift
//  Instagram
//
//  Created by 은서우 on 2024/02/12.
//

import UIKit
import SnapKit

class StoryCollectionViewCell: BaseCollectionViewCell {
    
    let profile = ProfileImage(frame: .zero)
    let userID = UILabel()
    
    override func configureHierarchy() {
        contentView.addSubview(profile)
        contentView.addSubview(userID)
    }
    
    override func configureView() {
        userID.textAlignment = .center
    }
    
    override func configureLayout() {
        profile.snp.makeConstraints {
            $0.top.equalTo(contentView).offset(2)
            $0.horizontalEdges.equalTo(contentView)
            $0.size.equalTo(100)
        }
        userID.snp.makeConstraints {
            $0.top.equalTo(profile.snp.bottom).offset(2)
            $0.horizontalEdges.equalTo(contentView)
        }
    }
    
}
