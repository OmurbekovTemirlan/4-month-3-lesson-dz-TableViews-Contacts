//
//  CostumView.swift
//  4 month 3 lesson dz
//
//  Created by Apple on 20.2.2024.
//

import UIKit

class CostumViews: UIView {
    
    private let userImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "user")
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    private let loginLabel = MakerView().makerLabel()
    
    private let namelabel = MakerView().makerLabel(
        text: "Welcome back , Tima",
        size: 14,
        weight: .regular)
     
    
    override func layoutSubviews() {
        super.layoutSubviews()
       backgroundColor = .systemGray6
        costumSetupUI()
    }
    private func costumSetupUI() {
        addSubview(userImage)
        NSLayoutConstraint.activate([
            userImage.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 0),
            userImage.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            userImage.heightAnchor.constraint(equalToConstant: 50),
            userImage.widthAnchor.constraint(equalToConstant: 50)
        ])
        
        addSubview(loginLabel)
        NSLayoutConstraint.activate([
            loginLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 5),
            loginLabel.leadingAnchor.constraint(equalTo: userImage.leadingAnchor, constant: 50),
        ])
        addSubview(namelabel)
        NSLayoutConstraint.activate([
            namelabel.topAnchor.constraint(equalTo: loginLabel.bottomAnchor, constant: 5),
            namelabel.leadingAnchor.constraint(equalTo: userImage.leadingAnchor, constant: 50),
        ])
    }


}
