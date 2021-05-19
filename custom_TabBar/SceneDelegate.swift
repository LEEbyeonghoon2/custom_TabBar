//
//  SceneDelegate.swift
//  custom_TabBar
//
//  Created by 이병훈 on 2021/05/18.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        
        let tab = UITabBarController()
        tab.view.backgroundColor = .white
        
        self.window?.rootViewController = tab
        
        let view01 = ViewController()
        let view02 = ViewController2()
        let view03 = ViewController3()
        
        tab.setViewControllers([view01,view02,view03], animated: false)
        
        view01.tabBarItem = UITabBarItem(title: "사진", image: UIImage(named: "photo")!.withRenderingMode(.alwaysOriginal), selectedImage: nil)
        
        view02.tabBarItem = UITabBarItem(title: "달력", image: UIImage(named: "calendar")!.withRenderingMode(.alwaysOriginal), selectedImage: nil)
        
        view03.tabBarItem = UITabBarItem(title: "SNS", image: UIImage(named: "twitter@2x")!.withRenderingMode(.alwaysOriginal), selectedImage: nil)
        
        guard let _ = (scene as? UIWindowScene) else { return }
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

