//
//  CardView.swift
//  DemoProject
//
//  Created by Vlad on 18.11.2020.
//

import UIKit

class CardView:UIView{
    
    let ratingView = Rating()
    let infoForFilm = InfoForFilm()
    let imageView = ImageView()
    
    init() {
        super.init(frame: .zero)
        
        
        imageView.layer.shadowColor = UIColor(named: "colorShadow")?.cgColor
        imageView.layer.shadowOpacity = 0.2
        imageView.layer.shadowOffset = .zero
        imageView.layer.shadowRadius = 15
        
        addSubview(infoForFilm)
        addSubview(ratingView)
        addSubview(imageView)
        
        infoForFilm.translatesAutoresizingMaskIntoConstraints = false
        ratingView.translatesAutoresizingMaskIntoConstraints = false
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
       
        imageViewConstraint()
 
        
        infoForFilmConstraint()
        

        ratingViewConstraint()

    }
    
    func imageViewConstraint(){
        imageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20).isActive = true
        imageView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20).isActive = true
        imageView.topAnchor.constraint(equalTo: topAnchor,constant: 10).isActive = true
        imageView.bottomAnchor.constraint(equalTo: infoForFilm.topAnchor, constant: -20).isActive = true
    }
    
    func infoForFilmConstraint(){
        infoForFilm.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20).isActive = true
        infoForFilm.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20).isActive = true
      
        infoForFilm.bottomAnchor.constraint(equalTo: ratingView.topAnchor, constant: -10).isActive = true
    }
    
    func ratingViewConstraint(){
        ratingView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20).isActive = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

