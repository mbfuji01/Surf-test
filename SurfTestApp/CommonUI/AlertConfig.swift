//
//  AlertConfig.swift
//  Common
//
//  Created by Andrey Lebedev on 18.09.2021.
//

import Foundation

public struct AlertConfig {
    public enum Style: Int {
        case actionSheet
        case alert
    }
    
    public var title: String?
    public var message: String?
    public var actionModels = [AlertActionModel]()
    public var style: Style = .alert
}

public struct AlertActionModel {
    public typealias AlertActionModelHandler = () -> Void
    public enum Style: Int {
        case `default`
        case cancel
        case destructive
    }

    public let title: String
    public let style: Style
    public var handler: AlertActionModelHandler?
    public var isEnabled = true

    public init(title: String, style: Style, handler: AlertActionModelHandler? = nil) {
        self.title = title
        self.style = style
        self.handler = handler
    }
}
