//
//  ViewController.swift
//  UIDesignPizzaAppz
//  Created by Burak Aydın on 16.09.2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = "Pizza"
        
        // Above, we said that we use .black color in the theme, which makes the clock wifi and battery sign color white
        navigationController?.navigationBar.barStyle = .black
        
        //We made the navigation bar red
        let appearance = UINavigationBarAppearance()
        appearance.backgroundColor = UIColor(named: "MainColor")
        
        //We adjusted the color, font and size of the title
        appearance.titleTextAttributes = [.foregroundColor: UIColor(named: "WritingColor")!,
                                          .font: UIFont(name: "DMSerifDisplay-Italic", size: 28)!]

        // We added them all to cover different screen formats so that the navigation bar looks smooth
        navigationController?.navigationBar.standardAppearance = appearance
        navigationController?.navigationBar.compactAppearance = appearance
        navigationController?.navigationBar.scrollEdgeAppearance = appearance

    }


}

