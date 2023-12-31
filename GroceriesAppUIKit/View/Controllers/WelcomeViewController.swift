//
//  ViewController.swift
//  GroceriesAppUIKit
//
//  Created by Jacob Perez on 12/5/23.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    private let welcomeView = WelcomeView()
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
        
    }
    
    private func setup() {
        view.addSubview(welcomeView)
        welcomeView.didTapStart = { [weak self] in
            guard let self = self else { return }
            self.router.pushCategoriesViewController()
        }
    }
    private func layout() {
        welcomeView.pinToEdges(of: view)
    }
}



