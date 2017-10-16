//
//  ViewController.swift
//  ScreenType_Example
//
//  Created by Maxwell Stein on 10/8/17.
//  Copyright © 2017 Maxwell Stein. All rights reserved.
//

import UIKit
import ScreenType

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        if UIScreen.current == .iPhoneX {
            print("Screen type is iPhone X")
        }

        if UIScreen.current == .iPhone6 || UIScreen.current == .iPhone6Plus {
            print("Screen type is either iPhone 6 or 6 Plus")
        }

        if UIScreen.current.rawValue < ScreenType.iPhone6.rawValue {
            print("Screen is smaller than an iPhone 6")
        }

        if UIScreen.current.rawValue >= ScreenType.iPad10_5.rawValue {
            print("Screen type is either iPad 10.5 or iPad 12.9")
        }

        let isIPhone4Or5 = UIScreen.current == .iPhone4 || UIScreen.current == .iPhone5
        let isIPhone4Or5Description = isIPhone4Or5 ? "Screen type is either iPhone 4 or 5" : "Screen type is not iPhone 4 or 5"
        print(isIPhone4Or5Description)

        let isIPhone6OrLater = UIScreen.current.rawValue >= ScreenType.iPhone6.rawValue && UIScreen.current.rawValue < ScreenType.iPad9_7.rawValue
        if isIPhone6OrLater {
            print("Screen type is iPhone 6, 6 Plus, or X")
        }

        let objectiveCViewController = ObjectiveCViewController()
        addChildViewController(objectiveCViewController)
        view.addSubview(objectiveCViewController.view)
    }

}
