//
//  TestViewViewController.swift
//  CSAlertView
//
//  Created by Yakup Çağlan on 1.03.2021.
//

import UIKit

class TestViewViewController: BaseViewController<TestView> {

    // MARK:- Life cyle
    override func linkInteractor() {
        baseView.delegate = self
    }
    
    // MARK:- Methods
    private func showAlert() {
        let myAlert = AlertViewController(actionButtonTitle: "Okey")
        myAlert.delegate = self
        presentViewController(myAlert)
    }
}

//Ex: - TestViewDelegate
extension TestViewViewController: TestViewDelegate {
    func didTapShowAlertButton() {
        showAlert()
    }
}

// MARK:- AlertViewControllerDelegate
extension TestViewViewController: AlertViewControllerDelegate {
    func didTapActionButton() {
        
    }
}

