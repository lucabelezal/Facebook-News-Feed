//
//  CustomTabBarController.swift
//  FacebookNewsFeed
//
//  Created by Lucas Nascimento on 26/02/2018.
//  Copyright © 2018 Lucas Nascimento. All rights reserved.
//

import UIKit

class CustomTabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let feedController = FeedController(collectionViewLayout: UICollectionViewFlowLayout())
        let feedNavigationController = UINavigationController(rootViewController: feedController)
        feedController.navigationItem.title = "News Feed"
        feedController.view.backgroundColor = UIColor.white
        feedNavigationController.title = "News Feed"
        feedNavigationController.tabBarItem.image = UIImage(named: "news_feed_icon")
        
        let friendRequestsController = FriendRequestsController()
        let friendRequestsNavigationController = UINavigationController(rootViewController: friendRequestsController)
        friendRequestsController.navigationItem.title = "Requests"
        friendRequestsController.view.backgroundColor = UIColor.white
        friendRequestsNavigationController.title = "Requests"
        friendRequestsNavigationController.tabBarItem.image = UIImage(named: "requests_icon")
        
        let messengerController = UIViewController()
        let messengerNavigationController = UINavigationController(rootViewController: messengerController)
        messengerController.navigationItem.title = "Messenger"
        messengerController.view.backgroundColor = UIColor.white
        messengerNavigationController.title = "Messenger"
        messengerNavigationController.tabBarItem.image = UIImage(named: "messenger_icon")
        
        let notificationsController = UIViewController()
        let notificationsNavigationController = UINavigationController(rootViewController: notificationsController)
        notificationsController.navigationItem.title = "Notifications"
        notificationsController.view.backgroundColor = UIColor.white
        notificationsNavigationController.title = "Notifications"
        notificationsNavigationController.tabBarItem.image = UIImage(named: "globe_icon")
        
        let moreController = UIViewController()
        let moreNavigationController = UINavigationController(rootViewController: moreController)
        moreController.navigationItem.title = "More"
        moreController.view.backgroundColor = UIColor.white
        moreNavigationController.title = "More"
        moreNavigationController.tabBarItem.image = UIImage(named: "more_icon")
        
        viewControllers = [feedNavigationController, friendRequestsNavigationController, messengerNavigationController, notificationsNavigationController, moreNavigationController]
        
        tabBar.isTranslucent = false
        
        let topBorder = CALayer()
        topBorder.frame = CGRect(x: 0, y: 0, width: 1000, height: 0.5)
        topBorder.backgroundColor = ColorPalette.borderColorGrey.cgColor
        
        tabBar.layer.addSublayer(topBorder)
        tabBar.clipsToBounds = true
    }
}
