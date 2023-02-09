//
//  MainPresenter.swift
//  SurfTestApp
//
//  Created by demasek on 03.02.2023
//  
//

import Foundation

class MainPresenter: MainControllerProtocol, MainInteractorOutputProtocol {
    var interactor: MainInteractorInputProtocol?
    weak var output: MainPresenterOutputProtocol?
    var router: MainRouterProtocol?
    weak var alertShowableObject: AlertShowableProtocol?
    
    private let alertBuilder = AlertBuilder()
    
    // MARK: - MainControllerProtocol
    
    func viewDidLoad() {}
    
    // MARK: - MainInteractorOutputProtocol
}

