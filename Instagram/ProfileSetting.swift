//
//  ProfileSetting.swift
//  Instagram
//
//  Created by 은서우 on 2024/02/11.
//

import Foundation

enum profileSetting: CaseIterable {
    case name
    case userID
    case sex
    case introduction
    case link
    
    var title: String {
        switch self {
        case .name:
            "이름"
        case .userID:
            "사용자 이름"
        case .sex:
            "성별 대명사"
        case .introduction:
            "소개"
        case .link:
            "링크"
        }
    }
    
    
    var notice: String? {
        switch self {
        case .name:
            "사람들이 이름, 별명, 또는 비즈니스 이름 등 회원님의 알려진 이름을 사용하여 회원님의 계정을 찾을 수 있도록 도와주세요.\n\n이름은 14일 동안 최대 두 번까지 변경할 수 있습니다."
        case .userID:
            "대부분의 경우 이후 14일 동안 사용자 이름을 다시 seou(으)로 변경할 수 있습니다."
        case .sex:
            nil
        case .introduction:
            nil
        case .link:
            nil
        }
    }
    
    var data: String? {
        switch self {
        case .name: UserDefaultsManager.shared.name
        case .userID: UserDefaultsManager.shared.userID
        case .sex: UserDefaultsManager.shared.sex
        case .introduction: UserDefaultsManager.shared.introduction
        case .link: UserDefaultsManager.shared.link
        }
    }
    
    func setData(_ value: String?) {
            switch self {
            case .name:
                UserDefaultsManager.shared.name = value
            case .userID:
                UserDefaultsManager.shared.userID = value
            case .sex:
                UserDefaultsManager.shared.sex = value
            case .introduction:
                UserDefaultsManager.shared.introduction = value
            case .link:
                UserDefaultsManager.shared.link = value
            }
        }
}
