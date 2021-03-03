//
//  AlertView.swift
//  CSAlertView
//
//  Created by Yakup Çağlan on 3.03.2021.
//

import UIKit

protocol AlertViewDelegate: class {
    func didTapButton()
}

final class AlertView: BaseView {
    
    // MARK:- Properties
    weak var delegate: AlertViewDelegate?
    
    private lazy var alertViewContainer: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.black.withAlphaComponent(0.4)
        return view
    }()
    
    private lazy var alertView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.alpha = 1
        return view
    }()
    
    private lazy var button: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("okey", for: .normal)
        return button
    }()
    
    // MARK:- Life cyle
    override func linkInteractor() {
        button.addTarget(self, action: #selector(dismisAlertAction), for: .touchUpInside)
    }
    
    override func prepareLayout() {
        setupalArtViewContainerLayout()
        setupAlertViewLayout()
        setupButtonLayout()
    }
    
    func setupalArtViewContainerLayout() {
        addSubview(alertViewContainer)
        alertViewContainer.snp.makeConstraints { (make) in
            make.edges.equalToSuperview()
        }
    }
    func setupAlertViewLayout() {
        alertViewContainer.addSubview(alertView)
        alertView.snp.makeConstraints { (make) in
            make.centerX.centerY.equalToSuperview()
            make.height.width.equalTo(200)
        }
    }
    func setupButtonLayout() {
        alertViewContainer.addSubview(button)
        button.snp.makeConstraints { (make) in
            make.centerX.centerY.equalToSuperview()
        }
    }
}

// Ex:- AlerView
extension AlertView {
    @objc func dismisAlertAction() {
        delegate?.didTapButton()
    }
}
