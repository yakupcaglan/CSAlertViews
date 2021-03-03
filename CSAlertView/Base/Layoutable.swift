//
//  Layoutable.swift
//  CSAlertView
//
//  Created by Yakup Çağlan on 3.03.2021.
//

import UIKit

typealias LayoutableView = Layoutable & UIView

public protocol Layoutable {
    func linkInteractor()
    func configureAppearance()
    func prepareLayout()
}

extension Layoutable where Self: UIView {
    static func create() -> Self {
        let view = Self()
        view.backgroundColor = .white
        return view
    }
}
