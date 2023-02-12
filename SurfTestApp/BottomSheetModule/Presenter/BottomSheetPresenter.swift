//
//  BottomSheetPresenter.swift
//  SurfTestApp
//
//  Created by demasek on 10.02.2023
//  
//

import Foundation

class BottomSheetPresenter: BottomSheetControllerProtocol, BottomSheetInteractorOutputProtocol {
    var interactor: BottomSheetInteractorInputProtocol?
    weak var output: BottomSheetPresenterOutputProtocol?
    var router: BottomSheetRouterProtocol?
    weak var alertShowableObject: AlertShowableProtocol?
    
    private let alertBuilder = AlertBuilder()
    
    // MARK: - BottomSheetControllerProtocol
    
    func viewDidLoad() {
		output?.setMainTitleText(text: "Стажировка в Surf")
		output?.setTopDescriptionText(text: "Работай над реальными задачами под руководством опытного наставника и получи возможность стать частью команды мечты.")
		output?.setBottomDescriptionText(text: "Получай стипендию, выстраивай удобный график, работай на современном железе.")
		output?.setWantToText(text: "Хочешь к нам?")
		output?.setSendButtonTitleText(text: "Отправить заявку")
	}
    
    // MARK: - BottomSheetInteractorOutputProtocol
}

