//
//  UserHeader.swift
//  LBTA_Twitter
//
//  Created by Ahmet on 22.10.2021.
//

import UIKit

class UserHeader: UICollectionViewCell {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    let textLabel: UILabel = {
        let label = UILabel()
        label.text = "WHO FOLLOW US"
        label.font = UIFont.systemFont(ofSize: 16)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    func setupViews() {
        addSubview(textLabel)
        
        NSLayoutConstraint.activate([
            textLabel.topAnchor.constraint(equalTo: self.topAnchor),
            textLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor),
            textLabel.rightAnchor.constraint(equalTo: self.rightAnchor),
            textLabel.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 12)
        ])
    }
    
}
