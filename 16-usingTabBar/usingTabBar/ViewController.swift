//
//  ViewController.swift
//  usingTabBar
//
//  Created by Burak Aydın on 17.09.2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let tabBarItems = tabBarController?.tabBar.items {
            let mainPageItem = tabBarItems[0]
            let settingPageItem = tabBarItems[1]
            
            mainPageItem.badgeValue = "3"
            settingPageItem.badgeValue = "New"

        }
        
        // tabbar background color
        let appearance = UITabBarAppearance()
        appearance.backgroundColor = UIColor.systemIndigo
        
        //We defined them all to work on all devices
        changeColor(itemAppearance: appearance.stackedLayoutAppearance)
        changeColor(itemAppearance: appearance.inlineLayoutAppearance)
        changeColor(itemAppearance: appearance.compactInlineLayoutAppearance)


        tabBarController?.tabBar.standardAppearance = appearance
        tabBarController?.tabBar.scrollEdgeAppearance = appearance

    }
    
    //color change 
    func changeColor(itemAppearance : UITabBarItemAppearance) {
        itemAppearance.selected.iconColor = UIColor.systemPink
        itemAppearance.selected.titleTextAttributes = [.foregroundColor : UIColor.systemPink]
        itemAppearance.selected.badgeBackgroundColor = UIColor.systemMint
        
        itemAppearance.normal.iconColor = UIColor.white
        itemAppearance.normal.titleTextAttributes = [.foregroundColor : UIColor.white]
        itemAppearance.normal.badgeBackgroundColor = UIColor.lightGray
    }
    
    


}

