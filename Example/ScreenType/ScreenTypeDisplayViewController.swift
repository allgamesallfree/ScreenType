//
//  ScreenTypeDisplayViewController.swift
//  ScreenType_Example
//
//  Created by Maxwell Stein on 10/8/17.
//  Copyright © 2017 Maxwell Stein. All rights reserved.
//

import UIKit
import ScreenType

class ScreenTypeDisplayViewController: UIViewController {
    
    @IBOutlet weak var screenTypeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        displayScreenType()
        addObjectiveCView()
        
        if UIScreen.current == .iPhoneX {
            print("Screen type is iPhone X")
        }

        if UIScreen.current == .iPhone6 || UIScreen.current == .iPhone6Plus {
            print("Screen type is either iPhone 6 or 6 Plus")
        }

        if UIScreen.current < ScreenType.iPhone6 {
            print("Screen is smaller than an iPhone 6")
        }

        if UIScreen.current >= ScreenType.iPad10_5 {
            print("Screen type is either iPad 10.5 or iPad 12.9")
        }

        let isIPhone4Or5 = UIScreen.current == .iPhone4 || UIScreen.current == .iPhone5
        let isIPhone4Or5Description = isIPhone4Or5 ? "Screen type is either iPhone 4 or 5" : "Screen type is not iPhone 4 or 5"
        print(isIPhone4Or5Description)

        let isIPhone6OrLater = UIScreen.current >= ScreenType.iPhone6 && UIScreen.current < ScreenType.iPad9_7
        if isIPhone6OrLater {
            print("Screen type is iPhone 6, 6 Plus, or X")
        }
    }
    
    private func addObjectiveCView() {
        let objectiveCViewController = ScreenTypeObjectiveCViewController()
        addChildViewController(objectiveCViewController)
        view.addSubview(objectiveCViewController.view)
    }
    
    /// Gets the current iPhone/iPad screen type and displays it
    private func displayScreenType() {
        let screenName: String = {
            switch UIScreen.current {
            case .iPhone4:
                return "iPhone 3.5 inch"
            case .iPhone5:
                return "iPhone 4.0 inch"
            case .iPhone6:
                return "iPhone 4.7 inch"
            case .iPhone6Plus:
                return "iPhone 5.5 inch"
            case .iPhoneX:
                return "iPhone X"
            case .iPad9_7:
                return "iPad 9.7 inch"
            case .iPad10_5:
                return "iPad 10.5 inch"
            case .iPad12_9:
                return "iPad 12.9 inch"
            }
        }()
        screenTypeLabel.text = screenName
    }

}
