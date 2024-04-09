//
//  TabBarViewController.swift
//  Tracker
//
//  Created by Максим Хоменков on 09.04.24.
//

import Foundation
import UIKit

final class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupTabBar()
    }
    
    private func setupTabBar() {
        let trackerViewController = UINavigationController(rootViewController: TrackerViewController())
        let statisticViewController = UINavigationController(rootViewController: StatisticViewController())
        
        trackerViewController.tabBarItem = UITabBarItem(
            title: "Трекеры",
            image: UIImage(systemName: "record.circle.fill"),
            selectedImage: nil
        )
        
        statisticViewController.tabBarItem = UITabBarItem(
            title: "Статистика",
            image: UIImage(systemName: "hare.fill"),
            selectedImage: nil
        )
        
        viewControllers = [
        trackerViewController,
        statisticViewController
        ]
    }
}
