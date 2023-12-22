//
//  CategoryCardCell.swift
//  GroceriesAppUIKit
//
//  Created by Jacob Perez on 12/20/23.
//

import UIKit

class CategoryCardCell: UICollectionViewCell {
    
    var model: CategoryCardModel? {
        didSet {
            bind()
        }
    }
    
    private let imageView: UIImageView = {
     let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private let titleLabel: UILabel = {
       let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 16, weight: .semibold)
        label.textAlignment = .center
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    override init(frame: CGRect) {
        super.init (frame: frame)
        setupView()
        style()
        layout ()
    }
    required init?(coder: NSCoder) {
        fatalError ("init(coder:) has not been implemented")
    }
    override var intrinsicContentSize: CGSize {
        return CGSize(width: UIView.noIntrinsicMetric, height: UIView.noIntrinsicMetric)
    }
}
extension CategoryCardCell {
    
    private func setupView() {
        contentView.addSubViews(imageView, titleLabel)
    }
    private func style() {
        layer.cornerRadius = 12
        layer.borderWidth = 2
        backgroundColor = .red
    }
    private func layout() {
        translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
        imageView.topAnchor.constraint (equalTo: contentView.topAnchor, constant: 32),
        imageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
        imageView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16),
        imageView.heightAnchor.constraint (equalToConstant: 70),
        
        titleLabel.topAnchor.constraint (equalTo: imageView.bottomAnchor, constant: 8),
        titleLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
        titleLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16),
        titleLabel.bottomAnchor.constraint (equalTo: contentView.bottomAnchor)
        ])
    }
    
    func bind() {
        guard let model = model else { return }
        imageView.image = model.image
        titleLabel.text = model.title
        backgroundColor = model.color
        layer.borderColor = model.borderColor.cgColor
    }
}
