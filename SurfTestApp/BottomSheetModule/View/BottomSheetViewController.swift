//
//  BottomSheetViewController.swift
//  SurfTestApp
//
//  Created by demasek on 09.02.2023.
//

import Foundation
import UIKit

class BottomSheetViewController: UIViewController, BottomSheetPresenterOutputProtocol {
	var controller: BottomSheetControllerProtocol?
	
	enum Constants {
		static let smallTopSpacing: CGFloat = 12.0
		static let bigTopSpacing: CGFloat = 24.0
		static let bottomViewHeight: CGFloat = 128.0
		static let sendButtonWidth: CGFloat = 219.0
		static let sendButtonHeight: CGFloat = 60.0
		static let sideSpacing: CGFloat = 20.0
		static let buttonTopSpacing: CGFloat = 10.0
		static let sendButtonCornerRadius: CGFloat = 30.0
	}
	
	//MARK: - Create UI
	
	private lazy var mainTitleLabel = UILabel.titleLabel
	private lazy var topDescriptionLabel = UILabel.descriptionLabel
	private lazy var bottomDescriptionLabel = UILabel.descriptionLabel
	private lazy var wantToLabel = UILabel.descriptionLabel
	private lazy var bottomView = UIView()
	
	private lazy var sendButton: UIButton = {
		let button = UIButton(type: .system)
		button.backgroundColor = .selectedItemBackgroundColor
		button.tintColor = .white
		button.titleLabel?.font = UIFont.systemFont(ofSize: 16, weight: .medium)
		button.layer.cornerRadius = Constants.sendButtonCornerRadius
		return button
	}()
	
	private lazy var topCollectionView = TopCollectionView()
	private lazy var bottomCollectionView = BottomCollectionView()
	
	//MARK: - Lifecycle
	
	override func viewDidLoad() {
		super.viewDidLoad()
		controller?.viewDidLoad()
		
		setupViews()
		setConstraints()
	}
	
	private func setupViews() {
		bottomView.backgroundColor = .white
		view.backgroundColor = .white
		
		view.addSubview(mainTitleLabel)
		view.addSubview(topDescriptionLabel)
		view.addSubview(bottomDescriptionLabel)
		view.addSubview(topCollectionView)
		view.addSubview(bottomCollectionView)
		view.addSubview(bottomView)
		bottomView.addSubview(wantToLabel)
		bottomView.addSubview(sendButton)
	}
	
	private func setConstraints() {
		mainTitleLabel.translatesAutoresizingMaskIntoConstraints = false
		NSLayoutConstraint.activate([
			mainTitleLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: Constants.bigTopSpacing),
			mainTitleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: Constants.sideSpacing)
		])
		topDescriptionLabel.translatesAutoresizingMaskIntoConstraints = false
		NSLayoutConstraint.activate([
			topDescriptionLabel.topAnchor.constraint(equalTo: mainTitleLabel.bottomAnchor, constant: Constants.smallTopSpacing),
			topDescriptionLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: Constants.sideSpacing),
			topDescriptionLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -Constants.sideSpacing)
		])
		topCollectionView.translatesAutoresizingMaskIntoConstraints = false
		NSLayoutConstraint.activate([
			topCollectionView.topAnchor.constraint(equalTo: topDescriptionLabel.bottomAnchor, constant: Constants.smallTopSpacing),
			topCollectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: Constants.sideSpacing),
			topCollectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
			topCollectionView.heightAnchor.constraint(equalToConstant: 44)
		])
		bottomDescriptionLabel.translatesAutoresizingMaskIntoConstraints = false
		NSLayoutConstraint.activate([
			bottomDescriptionLabel.topAnchor.constraint(equalTo: topCollectionView.bottomAnchor, constant: Constants.bigTopSpacing),
			bottomDescriptionLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: Constants.sideSpacing),
			bottomDescriptionLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -Constants.sideSpacing)
		])
		bottomCollectionView.translatesAutoresizingMaskIntoConstraints = false
		NSLayoutConstraint.activate([
			bottomCollectionView.topAnchor.constraint(equalTo: bottomDescriptionLabel.bottomAnchor, constant: Constants.smallTopSpacing),
			bottomCollectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: Constants.sideSpacing),
			bottomCollectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
			bottomCollectionView.heightAnchor.constraint(equalToConstant: 100)
		])
		bottomView.translatesAutoresizingMaskIntoConstraints = false
		NSLayoutConstraint.activate([
			bottomView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
			bottomView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
			bottomView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
			bottomView.heightAnchor.constraint(equalToConstant: Constants.bottomViewHeight)
		])
		wantToLabel.translatesAutoresizingMaskIntoConstraints = false
		NSLayoutConstraint.activate([
			wantToLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: Constants.sideSpacing),
			wantToLabel.centerYAnchor.constraint(equalTo: sendButton.centerYAnchor)
		])
		sendButton.translatesAutoresizingMaskIntoConstraints = false
		NSLayoutConstraint.activate([
			sendButton.topAnchor.constraint(equalTo: bottomView.topAnchor, constant: Constants.buttonTopSpacing),
			sendButton.trailingAnchor.constraint(equalTo: bottomView.trailingAnchor, constant: -Constants.sideSpacing),
			sendButton.widthAnchor.constraint(equalToConstant: Constants.sendButtonWidth),
			sendButton.heightAnchor.constraint(equalToConstant: Constants.sendButtonHeight)
		])
	}
	
	// MARK: - ItemsPresenterOutputProtocol
	func setMainTitleText(text: String) {
		mainTitleLabel.text = text
	}
	
	func setTopDescriptionText(text: String) {
		topDescriptionLabel.text = text
	}
	
	func setBottomDescriptionText(text: String) {
		bottomDescriptionLabel.text = text
	}
	
	func setWantToText(text: String) {
		wantToLabel.text = text
	}
	
	func setSendButtonTitleText(text: String) {
		sendButton.setTitle(text, for: .normal)
	}
}




