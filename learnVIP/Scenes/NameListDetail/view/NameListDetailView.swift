//
//  NameListDetailView.swift
//  learnVIP
//
//  Created by Nathaniel Andrian on 21/02/22.
//

import UIKit

class NameListDetailView: UIView {
    
    let label = UILabel()
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupComponents()
        setupConstraints()
    }
    
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func setupComponents(){
        label.translatesAutoresizingMaskIntoConstraints = false
        addSubview(label)
    }
    
    func setupConstraints() {
        NSLayoutConstraint.activate([
            label.centerYAnchor.constraint(equalTo: centerYAnchor),
            label.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            label.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16)
        ])
    }
    
}
