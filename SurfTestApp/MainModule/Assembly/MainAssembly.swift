//
//  MainAssembly.swift
//  SurfTestApp
//
//  Created by demasek on 03.02.2023
//  
//

import UIKit

class MainAssembly {
    func assembleVc() -> UIViewController {
        // View
        let view = MainViewController()

        // Interactor
        let interactor = MainInteractor()

        // Router
        let router = MainRouter()

        // Presenter
        let presenter = MainPresenter()

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
