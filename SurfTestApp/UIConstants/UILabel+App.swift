//
//  UILabel+App.swift
//  TurtleEnglish
//
//  Created by Andrey Lebedev on 19.08.2022.
//

import UIKit

extension UILabel {
	static var titleLabel: UILabel {
		let label = UILabel(frame: .zero)
		label.font = UIFont.systemFont(ofSize: 24, weight: .bold)
		label.textColor = UIColor.titleColor
		label.numberOfLines = 0
		return label
	}
	
	static var descriptionLabel: UILabel {
		let label = UILabel(frame: .zero)
		label.font = UIFont.systemFont(ofSize: 14, weight: .regular)
		label.textColor = UIColor.descriptionTitleColor
		label.numberOfLines = 0
		return label
	}
}
