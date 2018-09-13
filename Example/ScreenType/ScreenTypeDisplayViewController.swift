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

        if UIScreen.current == .iPhone5_8 {
            print("Screen type is iPhone 5.8 inch")
        }

        if UIScreen.current == .iPhone4_7 || UIScreen.current == .iPhone5_5 {
            print("Screen type is either iPhone 4.7 inch or 5.5 inch")
        }

        if UIScreen.current < .iPhone4_7 {
            print("Screen is smaller than an iPhone 4.7 inch")
        }

        if UIScreen.current >= .iPad10_5 {
            print("Screen type is either iPad 10.5 or iPad 12.9")
        }

        let isIPhone4Or5 = UIScreen.current == .iPhone3_5 || UIScreen.current == .iPhone4_0
        let isIPhone4Or5Description = isIPhone4Or5 ? "Screen type is either iPhone 4 or 5/C/S" : "Screen type is not iPhone 4 or 5/C/S"
        print(isIPhone4Or5Description)

        let isIPhone6OrLater = UIScreen.current >= .iPhone4_7 && UIScreen.current < .iPad9_7
        if isIPhone6OrLater {
            print("Screen type is iPhone 6/7/8, 6/7/8 Plus, or X")
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
            case .iPhone3_5:
                return "iPhone 3.5 inch"
            case .iPhone4_0:
                return "iPhone 4.0 inch"
            case .iPhone4_7:
                return "iPhone 4.7 inch"
            case .iPhone5_5:
                return "iPhone 5.5 inch"
            case .iPhone5_8:
                return "iPhone 5.8 inch"
            case .iPhone6_1:
                return "iPhone 6.1 inch"
            case .iPhone6_5:
                return "iPhone 6.5 inch"
            case .iPad9_7:
                return "iPad 9.7 inch"
            case .iPad10_5:
                return "iPad 10.5 inch"
            case .iPad12_9:
                return "iPad 12.9 inch"
            case .unknown:
                return "unknown"
            }
        }()
        screenTypeLabel.text = screenName
    }

}
