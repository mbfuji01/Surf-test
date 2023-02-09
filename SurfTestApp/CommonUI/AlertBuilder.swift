//
//  AlertBuilder.swift
//  Common
//
//  Created by Andrey Lebedev on 18.09.2021.
//

import Foundation

public class AlertBuilder {
    private var alertConfig = AlertConfig()
    
    public init() {}

    // MARK: - AlertBuilderProtocol

    @discardableResult
    public func add(title: String?) -> Self {
        alertConfig.title = title
        return self
    }

    @discardableResult
    public func add(message: String?) -> Self {
        alertConfig.message = message
        return self
    }

    @discardableResult
    public func add(style: AlertConfig.Style) -> Self {
        alertConfig.style = style
        return self
    }

    @discardableResult
    public func add(action: AlertActionModel) -> Self {
        alertConfig.actionModels.append(action)
        return self
    }
    
    public func build() -> AlertConfig {
		defer { alertConfig = AlertConfig() }
        return alertConfig
    }
}
