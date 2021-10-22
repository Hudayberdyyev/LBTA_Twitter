//
//  UserFooter.swift
//  LBTA_Twitter
//
//  Created by Ahmet on 22.10.2021.
//

import UIKit

class UserFooter: UICollectionViewCell {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    let textLabel : UILabel = {
        let twitterColor = UIColor(red: (61/255.0), green: (167/255.0), blue: (244/255.0), alpha: 1.0)
        let label = UILabel()
        label.text = "Show me more ..."
        label.font = UIFont.systemFont(ofSize: 15)
        label.textColor = twitterColor
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
