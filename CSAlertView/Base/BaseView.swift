//
//  BaseView.swift
//  CSAlertView
//
//  Created by Yakup Çağlan on 3.03.2021.
//

import UIKit

class BaseView: LayoutableView {
    
    // MARK:- Life cyle
    override init(frame: CGRect) {
        super.init(frame: frame)
        linkInteractor()
        configureAppearance()
        prepareLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: - Methods
    func linkInteractor() {}
    func configureAppearance() {}
    func prepareLayout() {}
    
}
