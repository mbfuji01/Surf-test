//
//  MainViewController.swift
//  SurfTestApp
//
//  Created by demasek on 03.02.2023
//  
//

import UIKit

class MainViewController: UIViewController, MainPresenterOutputProtocol {
    var controller: MainControllerProtocol?
	
	enum Constants {
		static let backgroundImage: String = "background_image"
	}
	
	//MARK: - Create UI
	
	private lazy var backgroundImageView: UIImageView = {
		let imageView = UIImageView()
		imageView.image = UIImage(named: Constants.backgroundImage)
		imageView.contentMode = .scaleAspectFill
		return imageView
	}()
	
	//MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        controller?.viewDidLoad()
		
		setupViews()
		setConstraints()
    }
	
	private func setupViews() {
		view.addSubview(backgroundImageView)
	}
	
	private func setConstraints() {
		backgroundImageView.frame = view.frame
	}
    
    // MARK: - ItemsPresenterOutputProtocol
    
}
