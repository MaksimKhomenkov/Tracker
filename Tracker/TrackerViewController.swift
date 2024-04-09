//
//  ViewController.swift
//  Tracker
//
//  Created by Максим Хоменков on 09.04.24.
//

import UIKit

final class TrackerViewController: UIViewController {
    
    private let searchBar: UISearchBar = {
        let searchBar = UISearchBar()
        return searchBar
    }()
    
    private let defaultImageView: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "defaultImage")
        return image
    }()
    private let defaultLabel: UILabel = {
        let label = UILabel()
        label.text = "Что будем отслеживать?"
        label.font = UIFont(name: "SFPro-Medium", size: 12)
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavBar()
        setupView()
    }
    
    private func setupView() {
        view.backgroundColor = .white
        
        [searchBar,
         defaultImageView,
         defaultLabel].forEach{
            $0.translatesAutoresizingMaskIntoConstraints = false
            view.addSubview($0)
        }
        
        NSLayoutConstraint.activate([
            searchBar.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            searchBar.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            searchBar.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            
            defaultImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            defaultImageView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            defaultImageView.widthAnchor.constraint(equalToConstant: 80),
            defaultImageView.heightAnchor.constraint(equalToConstant: 80),
            
            defaultLabel.topAnchor.constraint(equalTo: defaultImageView.bottomAnchor, constant: 10),
            defaultLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }
    
    private func setupNavBar() {
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationItem.title = "Трекеры"
        
        let plusButton = UIBarButtonItem(
            barButtonSystemItem: .add,
            target: self,
            action: #selector(plusTrackerButtonTapped))
        navigationItem.leftBarButtonItem = plusButton
        navigationItem.leftBarButtonItem?.tintColor = .black
    }
    
    @objc private func plusTrackerButtonTapped() {
        
    }
}
