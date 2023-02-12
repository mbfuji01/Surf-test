//
//  MainContracts.swift
//  SurfTestApp
//
//  Created by demasek on 03.02.2023
//  
//

import Foundation
import UIKit

protocol MainControllerProtocol {
    func viewDidLoad()
	func setupBottomSheet()
}

protocol MainInteractorInputProtocol {}

protocol MainInteractorOutputProtocol: AnyObject {}

protocol MainPresenterOutputProtocol: AnyObject {
	func presentBottomSheet(vc: UIViewController)
}

protocol MainRouterProtocol {}
