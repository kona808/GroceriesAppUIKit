//
//  Router.swift
//  GroceriesAppUIKit
//
//  Created by Jacob Perez on 12/6/23.
//

import UIKit

final class AppRouter {
    let navigation: UINavigationController
        
    init(navigation: UINavigationController) {
        self.navigation = navigation
    }
    
    private func push(controller: UIViewController) {
        navigation.pushViewController(controller, animated: true)
    }
    
    private func pop() {
        navigation.popViewController(animated: true)
    }
    
    func pushCategoriesViewController() {
        let controller = CategoriesViewController(router: self)
        push(controller: controller)
    }
}
