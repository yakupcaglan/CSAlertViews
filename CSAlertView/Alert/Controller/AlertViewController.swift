//
//  AlertVıewController.swift
//  CSAlertView
//
//  Created by Yakup Çağlan on 1.03.2021.
//

import UIKit

final class AlertViewController: BaseViewController<AlertView> {
    
    // MARK:- Life cyle
    override func viewDidLoad() {
        super.viewDidLoad()
        baseView.delegate = self
    }
}

//Ex: - AlertViewDelegate
extension AlertViewController: AlertViewDelegate {
    func didTapButton() {
        dismiss(animated: true)
    }
}
