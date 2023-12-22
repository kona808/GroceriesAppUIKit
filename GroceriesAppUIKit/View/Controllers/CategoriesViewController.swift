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
    private let viewModel = CategoriesViewModel()
        
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
        categoriesView.collectionView.delegate = self
        categoriesView.collectionView.dataSource = self
    }
    
    private func layout() {
        categoriesView.pinToEdges(of: view)
    }

    private func setupNavigationController() {
        title = "Find Products"
        navigationItem.setHidesBackButton(true, animated: false)
    }
}

extension CategoriesViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return viewModel.categoriesList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CategoryCardCell", for: indexPath) as? CategoryCardCell else { return CategoryCardCell() }
        // Loop through the integers of the categoriesList
        let item = viewModel.categoriesList[indexPath.row]
        // Populate the view with the proper information of the viewModel so we can set it in the view
        cell.model = item
        
        
        return cell
    }
}



