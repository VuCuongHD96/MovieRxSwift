//
//  TabBarController.swift
//  MovieRxSwift
//
//  Created by Work on 22/02/2023.
//

import UIKit

final class TabBarController: UITabBarController {
    
    let homeViewController = HomeViewController()
    
    // MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    // MARK: - Setup View
    private func setupView() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        guard let viewController = storyboard.instantiateViewController(withIdentifier: "ViewController") as? ViewController else {
            return
        }
        viewController.tabBarItem = UITabBarItem(title: "Home", image: UIImage(named: "Movie"), selectedImage: nil)
        homeViewController.tabBarItem = UITabBarItem(title: "Category", image: UIImage(named: "Category"), selectedImage: nil)
        viewControllers = [viewController, homeViewController]
    }
}
