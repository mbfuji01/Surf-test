//
//  AppDelegate.swift
//  SurfTestApp
//
//  Created by demasek on 03.02.2023.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
	var window: UIWindow?
	
	func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
		window = UIWindow(frame: UIScreen.main.bounds)
		window?.rootViewController = MainAssembly().assembleVc()
		window?.makeKeyAndVisible()
		
		return true
	}
}

