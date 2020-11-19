//
//  ViewController.swift
//  DemoProject
//
//  Created by Vlad on 18.11.2020.
//

import UIKit

class ViewController: UIViewController {
    
    let cardView = CardView()
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let safeArea = view.safeAreaLayoutGuide
        
        // Do any additional setup after loading the view.
        
        view.addSubview(cardView)
        
        cardView.translatesAutoresizingMaskIntoConstraints = false
        cardView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        cardView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        
        cardView.topAnchor.constraint(equalToSystemSpacingBelow: safeArea.topAnchor, multiplier: 1.0).isActive = true
        safeArea.bottomAnchor.constraint(equalToSystemSpacingBelow: cardView.bottomAnchor, multiplier: 1.0).isActive = true
        
    }


}

