//
//  AlertVıewController.swift
//  CSAlertView
//
//  Created by Yakup Çağlan on 1.03.2021.
//

import UIKit

protocol AlertViewControllerDelegate: class {
    func didTapActionButton()
}

final class AlertViewController: BaseViewController<AlertView> {
    
    // MARK:- Properties
    weak var delegate: AlertViewControllerDelegate?
    
    // MARK:- Life cyle
    required init(actionButtonTitle: String) {
        super.init(nibName: nil, bundle: nil)
        self.baseView.title = actionButtonTitle
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        baseView.delegate = self
        presentStyle()
    }
    
    private func presentStyle() {
        modalPresentationStyle = .overCurrentContext
        modalTransitionStyle = .crossDissolve
    }
}

//Ex:- AlertViewDelegate
extension AlertViewController: AlertViewDelegate {
    func didTapDissmisbutton() {
        dismiss(animated: true)
    }
    
    func didTapActionButton() {
        delegate?.didTapActionButton()
    }
}
