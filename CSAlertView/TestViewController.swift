//
//  TestViewViewController.swift
//  CSAlertView
//
//  Created by Yakup Çağlan on 1.03.2021.
//

import UIKit

class TestViewViewController: BaseViewController<TestView> {
    
    private lazy var myAlert = AlertViewController()

    override func linkInteractor() {
        baseView.delegate = self
    }
    
    private func showAlert() {
        myAlert.modalPresentationStyle = .overCurrentContext
        myAlert.modalTransitionStyle = .crossDissolve
        self.present(myAlert, animated: true, completion: nil)
    }
}

//Ex: - TestViewDelegate
extension TestViewViewController: TestViewDelegate {
    func didTapShowAlertButton() {
        showAlert()
    }
}

