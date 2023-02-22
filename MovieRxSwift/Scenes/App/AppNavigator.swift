//
//  AppNavigator.swift
//  MovieRxSwift
//
//  Created by Work on 20/02/2023.
//

import UIKit

protocol AppNavigatorType {
    func toMain()
}

struct AppNavigator: AppNavigatorType {
    unowned let window: UIWindow
    
    func toMain() {
        let tabBarController = TabBarController()
        let navigationController = UINavigationController(rootViewController: tabBarController)
        navigationController.isNavigationBarHidden = true
        window.rootViewController = navigationController
    }
}
