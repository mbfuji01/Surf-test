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
//		let navigation = UINavigationController(rootViewController: MainAssembly().assembleVc())
//		navigation.setNavigationBarHidden(true, animated: false)
//		window = UIWindow(frame: UIScreen.main.bounds)
//		window?.rootViewController = navigation
//		window?.makeKeyAndVisible()
		
		window = UIWindow(frame: UIScreen.main.bounds)
		let navigationVc = UINavigationController(rootViewController: MainAssembly().assembleVc())
		navigationVc.isNavigationBarHidden = true
		window?.rootViewController = navigationVc
		window?.makeKeyAndVisible()
		return true
	}
}

