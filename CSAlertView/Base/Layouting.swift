//
//  Layouting.swift
//  CSAlertView
//
//  Created by Yakup Çağlan on 3.03.2021.
//

import UIKit

typealias LayoutableViewController = Layoting & UIViewController

public protocol Layoting {
    associatedtype ViewType: Layoutable & UIView
    var baseView: ViewType { get }
}

extension Layoting where Self: UIViewController {
    
    var baseView: ViewType {
        guard let aView = view as? ViewType else {
            fatalError("view property has not been inialized yet, or not initialized as \(ViewType.self).")
        }
        return aView
    }
}
