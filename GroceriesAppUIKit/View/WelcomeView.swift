//
//  WelcomeView.swift
//  GroceriesAppUIKit
//
//  Created by Jacob Perez on 12/7/23.
//

import UIKit

class WelcomeView: UIView {
    
    private lazy var backgroundImage: UIImageView = {
        let imageView = UIImageView(image: Images.Welcome.background)
        imageView.contentMode = .scaleToFill
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private lazy var logoView: UIImageView = {
        let imageView = UIImageView(image: Images.Welcome.logo)
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 42, weight: .bold)
        label.text = "Welcome To Our Store"
        label.textColor = .white
        label.textAlignment = .center
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var descriptionLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        label.text = " Get your groceries in as fast as one hour!"
        label.textColor = .description
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var startButton: UIButton = {
       let button = UIButton()
        button.backgroundColor = .primary
        button.setTitle("Get Started", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 18, weight: .semibold)
        button.layer.cornerRadius = 12
        button.tintColor = .white
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(didTapStartButton), for: .touchUpInside)
        return button
    }()
    
    @objc func didTapStartButton() {
        
    }
    
    override init(frame: CGRect) {
        super.init (frame: frame)
        setupView()
        style()
        layout()
    }
    required init?(coder: NSCoder) {
        fatalError ("init(coder:) has not been implemented")
    }
    override var intrinsicContentSize: CGSize {
        return CGSize(width: UIView.noIntrinsicMetric, height: UIView.noIntrinsicMetric)
    }
}
extension WelcomeView {
    private func setupView() {
        addSubViews(backgroundImage, logoView, startButton, titleLabel, descriptionLabel)
    }
    private func style() {
    }
    private func layout() {
        translatesAutoresizingMaskIntoConstraints = false
        backgroundImage.pinToEdges(of: self)
        
        NSLayoutConstraint.activate([
            logoView.topAnchor.constraint(equalTo: topAnchor, constant: 400),
            logoView.centerXAnchor.constraint(equalTo: centerXAnchor),
            logoView.bottomAnchor.constraint(equalTo: titleLabel.topAnchor, constant: -10),
            titleLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 80),
            titleLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -80),
            titleLabel.bottomAnchor.constraint(equalTo: descriptionLabel.topAnchor, constant: -10),
            descriptionLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            descriptionLabel.bottomAnchor.constraint(equalTo: startButton.topAnchor, constant: -30),
            startButton.heightAnchor.constraint(equalToConstant: 67),
            startButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 30),
            startButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -30),
            startButton.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -90)
        ])
    }
}
