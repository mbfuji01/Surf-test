//
//  CollectionViewCell.swift
//  SurfTestApp
//
//  Created by demasek on 12.02.2023.
//

import Foundation
import UIKit

class CollectionViewCell: UICollectionViewCell {
	
	//MARK: - Create UI
	
	let mainLabel: UILabel = {
		let label = UILabel()
		label.font = UIFont.systemFont(ofSize: 14, weight: .regular)
		label.textColor = .titleColor
		label.textAlignment = .center
		label.text = ""
		return label
	}()
	
	private let backView: UIView = {
		let view = UIView()
		view.layer.cornerRadius = 12
		view.backgroundColor = .itemBackgroundColor
		return view
	}()
	
	private lazy var cellModels = CellModels()
	
	//MARK: - Lifecycle
	
	override init(frame: CGRect) {
		super.init(frame: frame)
		
		setupViews()
	}
	
	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
	
	private func setupViews() {
		layer.cornerRadius = 12
		backgroundColor = .itemBackgroundColor
		addSubview(backView)
		addSubview(mainLabel)
	}
	
	func cellConfigure(indexPath: IndexPath) {
		mainLabel.text = cellModels.cellModels[indexPath.item].itemLabel
	}
	
	override var isSelected: Bool {
		didSet {
			if self.isSelected {
				mainLabel.textColor = .white
				backgroundColor = .selectedItemBackgroundColor
			} else {
				mainLabel.textColor = .titleColor
				backgroundColor = .itemBackgroundColor
			}
		}
	}
	
	func setConstraints() {
		mainLabel.translatesAutoresizingMaskIntoConstraints = false
		NSLayoutConstraint.activate([
			mainLabel.centerYAnchor.constraint(equalTo: centerYAnchor),
			mainLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
		])
	}
}
