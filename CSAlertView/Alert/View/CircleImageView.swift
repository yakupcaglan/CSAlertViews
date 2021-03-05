//
//  ImageCircleView.swift
//  CSAlertView
//
//  Created by Yakup Çağlan on 6.03.2021.
//

import UIKit

final class CircleImageView: BaseView {
    
    // MARK:- Properties
    private var containerView: UIView = {
        let view = UIView()
        view.layer.cornerRadius = 30
        view.backgroundColor = .clear
        view.layer.borderWidth = 2
        view.layer.borderColor = UIColor.init(white: 0.8, alpha: 0.6).cgColor
        return view
    }()
    
    private lazy var imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.layer.cornerRadius = 28
        imageView.backgroundColor = .white
        return imageView
    }()

    // MARK:- Life cyle
    
    override func prepareLayout() {
        setupContainerViewViewLayout()
        setupImageViewLayout()
    }
    
    private func setupContainerViewViewLayout() {
        addSubview(containerView)
        containerView.snp.makeConstraints { (make) in
            make.height.width.equalTo(60)
        }
    }
    
    private func setupImageViewLayout() {
        addSubview(imageView)
        imageView.snp.makeConstraints { (make) in
            make.centerX.equalTo(containerView.snp.centerX)
            make.centerY.equalTo(containerView.snp.centerY)
            make.height.width.equalTo(56)
        }
    }
}
