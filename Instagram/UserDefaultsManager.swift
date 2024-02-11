//
//  UserDefaultsManager.swift
//  Instagram
//
//  Created by 은서우 on 2024/02/11.
//

import Foundation

class UserDefaultsManager {
    
    static let shared = UserDefaultsManager()
    let ud = UserDefaults.standard
    
    enum UDKey: String {
        case name
        case userID
        case Sex
        case introduction
        case link
    }
    
    var name: String? {
        get {
            ud.string(forKey: UDKey.name.rawValue) ?? nil
        }
        set {
            ud.set(newValue ,forKey: UDKey.name.rawValue)
        }
    }
    
    var userID: String? {
        get {
            ud.string(forKey: UDKey.userID.rawValue) ?? nil
        }
        set {
            ud.set(newValue ,forKey: UDKey.userID.rawValue)
        }
    }
    
    var sex: String? {
        get {
            ud.string(forKey: UDKey.Sex.rawValue) ?? nil
        }
        set {
            ud.set(newValue ,forKey: UDKey.Sex.rawValue)
        }
    }
    
    var introduction: String? {
        get {
            ud.string(forKey: UDKey.introduction.rawValue) ?? nil
        }
        set {
            ud.set(newValue ,forKey: UDKey.introduction.rawValue)
        }
    }
    
    var link: String? {
        get {
            ud.string(forKey: UDKey.link.rawValue) ?? nil
        }
        set {
            ud.set(newValue ,forKey: UDKey.link.rawValue)
        }
    }
}
