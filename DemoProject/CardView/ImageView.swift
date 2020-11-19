//
//  ImageView.swift
//  DemoProject
//
//  Created by Vlad on 19.11.2020.
//

import UIKit

class ImageView:UIView{
    
    let imageView = UIImageView()
    
    init() {
        super.init(frame: .zero)
        
        imageView.image = UIImage(named: "film")
        imageView.contentMode = .scaleAspectFill
        imageView.layer.masksToBounds = true
        imageView.layer.cornerRadius = 50
       
        
        addSubview(imageView)
        
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        imageView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        imageView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        imageView.topAnchor.constraint(equalTo: topAnchor).isActive = true
        imageView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        
        imageView.heightAnchor.constraint(lessThanOrEqualTo: imageView.widthAnchor, multiplier: 1.25).isActive = true
        
       
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
