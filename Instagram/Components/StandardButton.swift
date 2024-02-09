//
//  standardButton.swift
//  Instagram
//
//  Created by 은서우 on 2024/02/08.
//

import UIKit

class StandardButton: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        configureComponent()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configureComponent() {
        var config = UIButton.Configuration.filled()
        config.baseBackgroundColor = .systemGray3
        config.baseForegroundColor = .label
        self.configuration = config
    }
    
}
