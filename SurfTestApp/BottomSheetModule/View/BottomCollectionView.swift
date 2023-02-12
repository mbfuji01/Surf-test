//
//  BottomCollectionView.swift
//  SurfTestApp
//
//  Created by demasek on 12.02.2023.
//

import Foundation
import UIKit

class BottomCollectionView: UIView {
	
	//MARK: - Create UI
	
	var collectionView: UICollectionView = {
		let layout = UICollectionViewFlowLayout()
		layout.scrollDirection = .horizontal
		let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
		collectionView.isScrollEnabled = true
		collectionView.showsHorizontalScrollIndicator = false
		return collectionView
	}()
	
	private let idCollectionViewCell = "idCollectionViewCell"
	private lazy var cellModels = CellModels()
	
	//MARK: - Lifecycle
	
	override init(frame: CGRect) {
		super.init(frame: frame)
		setupViews()
		setCostraints()
		setDelegates()
		collectionView.register(CollectionViewCell.self, forCellWithReuseIdentifier: idCollectionViewCell)
	}
	
	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
	
	private func setupViews() {
		addSubview(collectionView)
	}
	
	private func setCostraints() {
		collectionView.translatesAutoresizingMaskIntoConstraints = false
		NSLayoutConstraint.activate([
			collectionView.topAnchor.constraint(equalTo: topAnchor),
			collectionView.leadingAnchor.constraint(equalTo: leadingAnchor),
			collectionView.bottomAnchor.constraint(equalTo: bottomAnchor),
			collectionView.trailingAnchor.constraint(equalTo: trailingAnchor)
		])
	}
	
	private func setDelegates() {
		collectionView.dataSource = self
		collectionView.delegate = self
	}
}

extension BottomCollectionView: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
	
	func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
		return cellModels.cellModels.count
	}
	
	func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
		let cell = collectionView.dequeueReusableCell(withReuseIdentifier: idCollectionViewCell, for: indexPath) as! CollectionViewCell
		cell.cellConfigure(indexPath: indexPath)
		cell.setConstraints()
		return cell
	}
	
	func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
		12
	}
	
	func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
		CGSize(width: cellModels.cellModels[indexPath.item].itemLabel.size(withAttributes: [.font: UIFont.systemFont(ofSize: 14, weight: .regular)]).width + 48,
			   height: 44)
	}

	func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
		collectionView.moveItem(at: indexPath, to: IndexPath(row: 0, section: 0))
	}
}
