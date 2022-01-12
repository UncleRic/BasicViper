//
//  SceneDelegate.swift
//  VIPER
//
//  Created by Frederick Lee on 1/12/22.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }

        let userRouter = UserRouter.start()
        let initialVC = userRouter.entry

        let window = UIWindow(windowScene: windowScene)
        window.rootViewController = initialVC
        self.window = window

        window.makeKeyAndVisible()
    }
}
