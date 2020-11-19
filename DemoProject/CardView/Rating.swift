//
//  Rating.swift
//  DemoProject
//
//  Created by Vlad on 18.11.2020.
//

import UIKit

class Rating:UIView{
    
    let name = UILabel()
    let rating = UILabel()
    
    let authorName = UILabel()
    
    let hStack = UIStackView()
    
    init() {
        super.init(frame: .zero)
        self.createLoyout()
    }
    
    func createLoyout(){
        name.text = "IMDB"
        rating.text = "7.8"
        authorName.text = "Gareth Edwards"
        
        rating.textColor = .yellow
        name.textColor = .white
        authorName.textColor = .gray
        
        hStack.alignment = .center
        hStack.axis = .horizontal
        hStack.distribution = .fill
        hStack.spacing = 5
        hStack.addArrangedSubview(name)
        hStack.addArrangedSubview(rating)
        
        addSubview(hStack)
        addSubview(authorName)
        
        authorName.translatesAutoresizingMaskIntoConstraints = false
        hStack.translatesAutoresizingMaskIntoConstraints = false
        
        hStackConstraint()
        
        authorNameConstraint()
        
        layer.cornerRadius = 17
        backgroundColor = .black
    }
    
    func hStackConstraint(){
        hStack.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 10).isActive = true
 
        hStack.trailingAnchor.constraint(equalTo: trailingAnchor,constant: -10).isActive = true
        
        hStack.topAnchor.constraint(equalTo: topAnchor, constant: 10).isActive = true
        hStack.bottomAnchor.constraint(equalTo: bottomAnchor,constant: -10).isActive = true
    }
    
    func authorNameConstraint(){
        authorName.leadingAnchor.constraint(equalTo: hStack.trailingAnchor, constant: 20).isActive = true
        
        authorName.topAnchor.constraint(equalTo: topAnchor, constant: 10).isActive = true
        authorName.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -10).isActive = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
