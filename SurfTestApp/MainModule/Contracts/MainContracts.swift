//
//  MainContracts.swift
//  SurfTestApp
//
//  Created by demasek on 03.02.2023
//  
//

import Foundation

protocol MainControllerProtocol {
    func viewDidLoad()
}

protocol MainInteractorInputProtocol {}

protocol MainInteractorOutputProtocol: AnyObject {}

protocol MainPresenterOutputProtocol: AnyObject {}

protocol MainRouterProtocol {}
