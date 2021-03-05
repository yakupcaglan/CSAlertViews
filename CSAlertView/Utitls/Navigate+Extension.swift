//
//  Navigate+Extension.swift
//  CSAlertView
//
//  Created by Yakup Çağlan on 5.03.2021.
//

import UIKit

protocol Navigate {
    func presentViewController(_ viewController: UIViewController, _ animated: Bool, completion: (() -> Void)?)
    func pushViewController()
}

extension Navigate where Self: UIViewController {
    func presentViewController(_ viewController: UIViewController,
                               _ animated: Bool = false,
                               completion: (() -> Void)? = nil) {
        present(viewController, animated: animated, completion: completion)
    }
    
    func pushViewController() {}

}
