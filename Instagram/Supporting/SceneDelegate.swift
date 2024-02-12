//
//  SceneDelegate.swift
//  Instagram
//
//  Created by 은서우 on 2024/02/08.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    
    var window: UIWindow?
    
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let scene = (scene as? UIWindowScene) else { return }
        
        // 탭 바 컨트롤러 생성
        let tabBarController = UITabBarController()
        
        // 홈뷰 컨트롤러 생성 및 네비게이션 컨트롤러 연결
        let homeViewController = HomeViewController()
        homeViewController.tabBarItem = UITabBarItem(title: nil, image: UIImage(systemName: "house"), selectedImage: UIImage(systemName: "house.fill"))
        let homeNavigationController = UINavigationController(rootViewController: homeViewController)
        
        // 탐색뷰 컨트롤러 생성 및 네비게이션 컨트롤러 연결
        let searchViewController = SearchViewController()
        searchViewController.tabBarItem = UITabBarItem(title: nil, image: UIImage(systemName: "magnifyingglass"), selectedImage: UIImage(systemName: "magnifyingglass"))
        let searchNavigationController = UINavigationController(rootViewController: searchViewController)
        
        // 내 프로필 뷰 컨트롤러 생성 및 네비게이션 컨트롤러 연결
        let postingViewController = PostingViewController()
        postingViewController.tabBarItem = UITabBarItem(title: nil, image: UIImage(systemName: "plus.app"), selectedImage: UIImage(systemName: "plus.app"))
        let postingNavigationController = UINavigationController(rootViewController: postingViewController)
        
        // 내 프로필 뷰 컨트롤러 생성 및 네비게이션 컨트롤러 연결
        let profileViewController = ProfileViewController()
        let image = ProfileImage(frame: .zero).image?.resizedImage(newWidth: 40).roundedImage.withRenderingMode(.alwaysOriginal)
        profileViewController.tabBarItem.image = image
        let profileNavigationController = UINavigationController(rootViewController: profileViewController)
        
        // 탭 바 컨트롤러에 뷰 컨트롤러 추가
        tabBarController.viewControllers = [homeNavigationController, 
                                            searchNavigationController,
                                            postingNavigationController,
                                            profileNavigationController]
        
        window = UIWindow(windowScene: scene)
               
        window?.rootViewController = tabBarController
        window?.makeKeyAndVisible()
    }
    
    func sceneDidDisconnect(_ scene: UIScene) {
        // Called as the scene is being released by the system.
        // This occurs shortly after the scene enters the background, or when its session is discarded.
        // Release any resources associated with this scene that can be re-created the next time the scene connects.
        // The scene may re-connect later, as its session was not necessarily discarded (see `application:didDiscardSceneSessions` instead).
    }
    
    func sceneDidBecomeActive(_ scene: UIScene) {
        // Called when the scene has moved from an inactive state to an active state.
        // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
    }
    
    func sceneWillResignActive(_ scene: UIScene) {
        // Called when the scene will move from an active state to an inactive state.
        // This may occur due to temporary interruptions (ex. an incoming phone call).
    }
    
    func sceneWillEnterForeground(_ scene: UIScene) {
        // Called as the scene transitions from the background to the foreground.
        // Use this method to undo the changes made on entering the background.
    }
    
    func sceneDidEnterBackground(_ scene: UIScene) {
        // Called as the scene transitions from the foreground to the background.
        // Use this method to save data, release shared resources, and store enough scene-specific state information
        // to restore the scene back to its current state.
    }
    
    
}

