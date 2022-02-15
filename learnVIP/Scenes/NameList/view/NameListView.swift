//
//  NameListView.swift
//  learnVIP
//
//  Created by Nathaniel Andrian on 15/02/22.
//

import UIKit

class NameListView: UIView {
    
    let tableView = UITableView()

    override init(frame: CGRect) {
        super.init(frame: frame )
        
        setupComponent()
        setupConstraint()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupComponent(){
       
        tableView.translatesAutoresizingMaskIntoConstraints = false
       
        addSubview(tableView)
    }
    func setupConstraint(){
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: topAnchor),
            tableView.bottomAnchor.constraint(equalTo: bottomAnchor),
            tableView.leadingAnchor.constraint(equalTo: leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: trailingAnchor)
        ])
    }
}
