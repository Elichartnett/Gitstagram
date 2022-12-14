//
//  FavoriteCell.swift
//  Gitstagram
//
//  Created by Eli Hartnett on 8/7/22.
//

import UIKit

class FavoriteCell: UITableViewCell {
    static let reuseID = "Favorite Cell"
    let avatarImageView = GGAvatarImageView(frame: .zero)
    let usernameLabel = GGTitleLabel(textAlignment: .left, fontSize: 26)
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure() {
        addSubviews(avatarImageView, usernameLabel)
        
        accessoryType = .disclosureIndicator
        let padding: CGFloat = 12
        
        NSLayoutConstraint.activate([
            avatarImageView.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            avatarImageView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: padding),
            avatarImageView.widthAnchor.constraint(equalToConstant: 60),
            avatarImageView.heightAnchor.constraint(equalToConstant: 60),
            
            usernameLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            usernameLabel.leadingAnchor.constraint(equalTo: avatarImageView.trailingAnchor, constant: 24),
            usernameLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -padding),
            usernameLabel.heightAnchor.constraint(equalToConstant: 40)
        ])
    }
    
    func setFavorite(favorite: Follower) {
        usernameLabel.text = favorite.login
        avatarImageView.downloadAvatarImage(fromURL: favorite.avatarUrl
        )
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        avatarImageView.image = UIImage(named: Constants.Images.avatarPlaceholder)
    }
}
