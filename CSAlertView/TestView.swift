//
//  TestView.swift
//  CSAlertView
//
//  Created by Yakup Çağlan on 3.03.2021.
//

import UIKit

protocol TestViewDelegate: class {
    func didTapShowAlertButton()
}

final class TestView: BaseView {
    
    // MARK:- Properties
    weak var delegate: TestViewDelegate?
    
    private lazy var button: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Show Aler", for: .normal)
        return button
    }()
    
    // MARK:- Life cyle
    override func linkInteractor() {
        button.addTarget(self,
                         action:  #selector(showAlertButtonAction),
                         for: .touchUpInside)
    }
    
    override func prepareLayout() {
        setupButtonLayout()
    }
    
    private func setupButtonLayout() {
        addSubview(button)
        button.snp.makeConstraints { (make) in
            make.centerX.centerY.equalToSuperview()
        }
    }
}

//Ex: - TestView
extension TestView {
    @objc func showAlertButtonAction() {
        delegate?.didTapShowAlertButton()
    }
}
