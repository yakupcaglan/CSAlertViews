//
//  BaseViewController.swift
//  CSAlertView
//
//  Created by Yakup Çağlan on 3.03.2021.
//

import UIKit

class BaseViewController<T: LayoutableView>: LayoutableViewController  {
    
    // MARK:- Properties
    typealias ViewType = T

    // MARK:- Life cyle
    override func loadView() {
        view = ViewType.create()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        linkInteractor()
        configureAppearance()
        prepareLayout()
    }
    
    //MARK: - Methods
    func linkInteractor() {}
    func configureAppearance() {}
    func prepareLayout() {}

}
