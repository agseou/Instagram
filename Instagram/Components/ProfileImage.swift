//
//  ProfileImage.swift
//  Instagram
//
//  Created by 은서우 on 2024/02/10.
//

import UIKit

class ProfileImage: UIImageView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        configureView()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        layer.cornerRadius = bounds.width/2
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configureView() {
        image = UIImage(resource: .sample)
        clipsToBounds = true
    }
    
}
