//
//  UserCell.swift
//  LBTA_Twitter
//
//  Created by Ahmet on 22.10.2021.
//

import UIKit

class UserCell: UICollectionViewCell {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.setupViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    let profileImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.backgroundColor = .red
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let textLabel: UILabel = {
        let label = UILabel()
        label.text = "TEST"
        label.backgroundColor = .yellow
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let usernameLabel: UILabel = {
        let label = UILabel()
        label.text = "username"
        label.backgroundColor = .purple
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let bioTextView: UITextView = {
        let textView = UITextView()
        textView.backgroundColor = .orange
        textView.translatesAutoresizingMaskIntoConstraints = false
        return textView
    }()
    
    let followButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .cyan
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    func setupViews() {
        
        addSubview(profileImageView)
        addSubview(textLabel)
        addSubview(usernameLabel)
        addSubview(bioTextView)
        addSubview(followButton)
        
        // MARK: - Profile image anchors
        profileImageView.topAnchor.constraint(equalTo: self.topAnchor, constant: 12).isActive = true
        profileImageView.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 12).isActive = true
        profileImageView.widthAnchor.constraint(equalToConstant: 50).isActive = true
        profileImageView.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        // MARK: - TextLabel anchors
        textLabel.topAnchor.constraint(equalTo: profileImageView.topAnchor).isActive = true
        textLabel.leftAnchor.constraint(equalTo: profileImageView.rightAnchor, constant: 10).isActive = true
        textLabel.rightAnchor.constraint(equalTo: followButton.leftAnchor, constant: -8).isActive = true
        textLabel.heightAnchor.constraint(equalToConstant: 20).isActive = true
        
        // MARK: - Username anchors
        NSLayoutConstraint.activate([
            usernameLabel.topAnchor.constraint(equalTo: textLabel.bottomAnchor, constant: 8),
            usernameLabel.rightAnchor.constraint(equalTo: textLabel.rightAnchor),
            usernameLabel.leftAnchor.constraint(equalTo: textLabel.leftAnchor),
            usernameLabel.heightAnchor.constraint(equalToConstant: 20)
        ])
        
        // MARK: - Bio text anchors
        NSLayoutConstraint.activate([
            bioTextView.topAnchor.constraint(equalTo: usernameLabel.bottomAnchor),
            bioTextView.leftAnchor.constraint(equalTo: textLabel.leftAnchor),
            bioTextView.rightAnchor.constraint(equalTo: self.rightAnchor),
            bioTextView.bottomAnchor.constraint(equalTo: self.bottomAnchor)
        ])
        
        // MARK: - Follow button anchors
        NSLayoutConstraint.activate([
            followButton.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -12),
            followButton.topAnchor.constraint(equalTo: self.textLabel.topAnchor),
            followButton.widthAnchor.constraint(equalToConstant: 120),
            followButton.heightAnchor.constraint(equalToConstant: 34)
        ])
        
    }
    
}
