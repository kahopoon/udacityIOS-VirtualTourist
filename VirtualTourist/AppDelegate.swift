//
//  AppDelegate.swift
//  VirtualTourist
//
//  Created by Ka Ho Poon on 30/1/2017.
//  Copyright © 2017 Ka Ho Poon. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    let stack = CoreDataStack(modelName: "Model")!
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        return true
    }

}

