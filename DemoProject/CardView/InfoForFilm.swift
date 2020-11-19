//
//  InfoForFilm.swift
//  DemoProject
//
//  Created by Vlad on 18.11.2020.
//

import UIKit

class InfoForFilm:UIView{
    
    let typeFilm = UILabel()
    let titleFilm = UILabel()
    
    init() {
        super.init(frame: .zero)
        
        typeFilm.text = "Action, Adventure, Sci-Fi"
        typeFilm.textColor = .gray
        
        titleFilm.text = "Rogue One: A Star Wars Story"
        titleFilm.numberOfLines = 0
        titleFilm.font = titleFilm.font.withSize(30)
        
        addSubview(typeFilm)
        addSubview(titleFilm)
        
        typeFilm.translatesAutoresizingMaskIntoConstraints = false
        titleFilm.translatesAutoresizingMaskIntoConstraints = false
        
        typeFilmConstraint()
        titleFilmConstraint()
        
    }
    
    func typeFilmConstraint(){
        typeFilm.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        typeFilm.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        typeFilm.topAnchor.constraint(equalTo: topAnchor).isActive = true
        
        typeFilm.bottomAnchor.constraint(equalTo: titleFilm.topAnchor, constant: -3).isActive = true
    }
    
    func titleFilmConstraint(){
        titleFilm.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        titleFilm.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        titleFilm.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
