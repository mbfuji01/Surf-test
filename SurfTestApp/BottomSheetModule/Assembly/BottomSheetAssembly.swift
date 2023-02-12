//
//  BottomSheetAssembly.swift
//  SurfTestApp
//
//  Created by demasek on 10.02.2023
//  
//

import UIKit

class BottomSheetAssembly {
    func assembleVc() -> UIViewController {
        // View
        let view = BottomSheetViewController()

        // Interactor
        let interactor = BottomSheetInteractor()

        // Router
        let router = BottomSheetRouter()

        // Presenter
        let presenter = BottomSheetPresenter()

        // Dependency Setup
        view.controller = presenter
        
        presenter.output = view
		presenter.alertShowableObject = view as? any AlertShowableProtocol
        presenter.interactor = interactor
        presenter.router = router
        
        interactor.output = presenter
        router.vc = view

        return view
    }
}
