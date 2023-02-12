//
//  MainPresenter.swift
//  SurfTestApp
//
//  Created by demasek on 03.02.2023
//  
//

import Foundation
import UIKit

class MainPresenter: MainControllerProtocol, MainInteractorOutputProtocol {
    var interactor: MainInteractorInputProtocol?
    weak var output: MainPresenterOutputProtocol?
    var router: MainRouterProtocol?
    weak var alertShowableObject: AlertShowableProtocol?
    
    private let alertBuilder = AlertBuilder()
    
    // MARK: - MainControllerProtocol
    
	func viewDidLoad() {
		setupBottomSheet()
	}
	
	internal func setupBottomSheet() {
		let bottomSheet = BottomSheetAssembly().assembleVc()
		let navigationVC = UINavigationController(rootViewController: bottomSheet)
		navigationVC.isModalInPresentation = true
		if let sheet = navigationVC.sheetPresentationController {
			sheet.detents = [
				.custom { context in
					return context.maximumDetentValue * 0.37
				},
				.custom { context in
					return context.maximumDetentValue * 0.62
				},
				.large()
			]
//			sheet.selectedDetentIdentifier = .medium
			sheet.largestUndimmedDetentIdentifier = .large
			sheet.preferredCornerRadius = 32
		}
		output?.presentBottomSheet(vc: navigationVC)
	}
    
    // MARK: - MainInteractorOutputProtocol
}

