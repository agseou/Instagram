//
//  StandardButton.swift
//  Instagram
//
//  Created by 은서우 on 2024/02/12.
//

import UIKit

class StandardButton: UIButton {

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        configureView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configureView() {
        var config = UIButton.Configuration.plain()
        config.baseForegroundColor = .label
        config.contentInsets.leading = 4
        config.contentInsets.trailing = 4
        self.configuration = config
    }
    

}
