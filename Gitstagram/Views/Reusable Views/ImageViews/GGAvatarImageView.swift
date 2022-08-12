//
//  GGAvatarImageView.swift
//  Gitstagram
//
//  Created by Eli Hartnett on 8/1/22.
//

import UIKit

class GGAvatarImageView: UIImageView {
    
    let cache = NetworkManager.shared.cache

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure() {
        layer.cornerRadius = 10
        clipsToBounds = true
        image = UIImage(named: Constants.Images.avatarPlaceholder)
        translatesAutoresizingMaskIntoConstraints = false
    }
}
