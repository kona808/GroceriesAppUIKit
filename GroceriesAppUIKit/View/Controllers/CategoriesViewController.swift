//
//  CategoriesViewController.swift
//  GroceriesAppUIKit
//
//  Created by Jacob Perez on 12/7/23.
//

import UIKit

class CategoriesViewController: UIViewController {
    
    private let categoriesView = CategoriesView()
    var router: AppRouter

    init(router: AppRouter) {
        self.router = router
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
        layout()
        setupNavigationController()
        
    }
    private func setup() {
        view.addSubview(categoriesView)
    }
    
    private func layout() {
        categoriesView.pinToEdges(of: view)
    }

    private func setupNavigationController() {
        title = "Find Products"
        navigationItem.setHidesBackButton(true, animated: false)
    }
}
