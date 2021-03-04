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
        view.layer.cornerRadius = 16
        view.alpha = 1
        return view
    }()
    
    private lazy var alertTextLabel: UILabel = {
        let label = UILabel()
        label.text = "This alerview text. It give to you info for status"
        label.numberOfLines = 0
        return label
    }()

    private lazy var dismissButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("cancel", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .systemOrange
        button.layer.cornerRadius = 16
        return button
    }()
    
    private lazy var actionButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("okey", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .systemBlue
        button.layer.cornerRadius = 16
        return button
    }()
    
    private lazy var buttonStackView: UIStackView = {
        let stackView = UIStackView(
            arrangedSubviews: [
                dismissButton,
                actionButton
            ])
        stackView.axis = .horizontal
        stackView.spacing = 12
        stackView.distribution = .fillEqually
        return stackView
    }()
    
    // MARK:- Life cyle
    override func linkInteractor() {
        dismissButton.addTarget(self, action: #selector(dismisAlertAction), for: .touchUpInside)
    }
    
    override func prepareLayout() {
        setupalArtViewContainerLayout()
        setupAlertViewLayout()
        setupButtonsLayout()
        setupAlertTextLabelLayout()
    }
    
    private func setupalArtViewContainerLayout() {
        addSubview(alertViewContainer)
        alertViewContainer.snp.makeConstraints { (make) in
            make.edges.equalToSuperview()
        }
    }
    
    private func setupAlertViewLayout() {
        alertViewContainer.addSubview(alertView)
        alertView.snp.makeConstraints { (make) in
            make.centerX.centerY.equalToSuperview()
            make.width.equalToSuperview().multipliedBy(0.7)
            make.height.equalTo(alertView.snp.width).multipliedBy(0.7)
        }
    }
    
    private func setupAlertTextLabelLayout() {
        alertView.addSubview(alertTextLabel)
        alertTextLabel.snp.makeConstraints { (make) in
            make.centerY.centerX.equalToSuperview()
            make.leading.trailing.equalToSuperview().inset(16)
        }
    }
    
    private func setupButtonsLayout() {
        alertView.addSubview(buttonStackView)
        buttonStackView.snp.makeConstraints { (make) in
            make.bottom.equalToSuperview().offset(-16)
            make.leading.trailing.equalToSuperview().inset(16)
            make.height.equalTo(40)
        }
    }
}

// Ex:- AlerView
extension AlertView {
    @objc func dismisAlertAction() {
        delegate?.didTapButton()
    }
}
