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
        imageView.image = UIImage(named: "bbc")
        imageView.layer.cornerRadius = 5
//        imageView.layer.masksToBounds = true
        imageView.clipsToBounds = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let textLabel: UILabel = {
        let label = UILabel()
        label.text = "BBC News"
        label.font = UIFont.boldSystemFont(ofSize: 16)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let usernameLabel: UILabel = {
        let label = UILabel()
        label.text = "@bbcnews"
        label.font = UIFont.systemFont(ofSize: 14)
        label.textColor = UIColor(red: (130/255.0), green: (130/255.0), blue: (130/255.0), alpha: 1.0)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let bioTextView: UITextView = {
        let textView = UITextView()
        textView.backgroundColor = .clear
        textView.text = "A film crew member has died and another was injured after actor Alec Baldwin discharged a prop firearm on the set of the movie \"Rust\" in New Mexico on Thursday, according to a law enforcement statement provided to CNN."
        textView.font = UIFont.systemFont(ofSize: 14)
        textView.translatesAutoresizingMaskIntoConstraints = false
        return textView
    }()
    
    let followButton: UIButton = {
        let button = UIButton()
        let twitterColor = UIColor(red: (61/255.0), green: (167/255.0), blue: (244/255.0), alpha: 1.0)
        button.layer.cornerRadius = 5
        button.layer.borderWidth = 1
        button.layer.borderColor = twitterColor.cgColor
        button.setTitleColor(twitterColor, for: .normal)
        button.setTitle("Follow", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        button.setImage(UIImage(named: "duotone-user-plus"), for: .normal)
        button.imageView?.contentMode = .scaleAspectFit
        button.imageEdgeInsets = UIEdgeInsets(top: 0, left: -10, bottom: 0, right: 0)
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
        profileImageView.widthAnchor.constraint(equalToConstant: 60).isActive = true
        profileImageView.heightAnchor.constraint(equalToConstant: 60).isActive = true
        
        // MARK: - TextLabel anchors
        textLabel.topAnchor.constraint(equalTo: profileImageView.topAnchor).isActive = true
        textLabel.leftAnchor.constraint(equalTo: profileImageView.rightAnchor, constant: 10).isActive = true
        textLabel.rightAnchor.constraint(equalTo: followButton.leftAnchor, constant: -8).isActive = true
        textLabel.heightAnchor.constraint(equalToConstant: 20).isActive = true
        
        // MARK: - Username anchors
        NSLayoutConstraint.activate([
            usernameLabel.topAnchor.constraint(equalTo: textLabel.bottomAnchor, constant: 0),
            usernameLabel.rightAnchor.constraint(equalTo: textLabel.rightAnchor),
            usernameLabel.leftAnchor.constraint(equalTo: textLabel.leftAnchor),
            usernameLabel.heightAnchor.constraint(equalToConstant: 20)
        ])
        
        // MARK: - Bio text anchors
        NSLayoutConstraint.activate([
            bioTextView.topAnchor.constraint(equalTo: usernameLabel.bottomAnchor, constant: -4),
            bioTextView.leftAnchor.constraint(equalTo: textLabel.leftAnchor, constant: -4),
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
