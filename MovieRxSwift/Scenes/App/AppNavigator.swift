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
        let viewModel = CategoryViewModel()
        let viewController = CategoryViewController()
        viewController.bindViewModel(to: viewModel)
        let navigationController = UINavigationController(rootViewController: viewController)
        navigationController.isNavigationBarHidden = true
        window.rootViewController = navigationController
    }
}
