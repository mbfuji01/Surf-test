//
//  AlertShowableProtocol.swift
//  Common
//
//  Created by Andrey Lebedev on 18.09.2021.
//

import Foundation

public protocol AlertShowableProtocol: AnyObject {
    func showAlert(with config: AlertConfig)
}
