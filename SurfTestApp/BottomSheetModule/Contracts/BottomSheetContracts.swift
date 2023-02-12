//
//  BottomSheetContracts.swift
//  SurfTestApp
//
//  Created by demasek on 10.02.2023
//  
//

import Foundation

protocol BottomSheetControllerProtocol {
    func viewDidLoad()
}

protocol BottomSheetInteractorInputProtocol {}

protocol BottomSheetInteractorOutputProtocol: AnyObject {}

protocol BottomSheetPresenterOutputProtocol: AnyObject {
	func setMainTitleText(text: String)
	func setTopDescriptionText(text: String)
	func setBottomDescriptionText(text: String)
	func setWantToText(text: String)
	func setSendButtonTitleText(text: String)
}

protocol BottomSheetRouterProtocol {}

public protocol CollectionCellAutoLayout: AnyObject {
	var cachedSize: CGSize? { get set }
}
