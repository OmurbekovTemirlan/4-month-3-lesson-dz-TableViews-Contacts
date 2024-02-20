//
//  contactTableViewCell.swift
//  4 month 3 lesson dz
//
//  Created by Apple on 20.2.2024.
//

import UIKit

class ContactTableViewCell: UITableViewCell {
    
    private let contactImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private let nameLabel = MakerView().makerLabel(
        size: 16,
        weight: .bold)

    
    private let phoneNumberLabel = MakerView().makerLabel(
        size: 14,
        weight: .semibold,
        textColor: .gray)

    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

    
    private func setupUI() {
        contentView.addSubview(contactImageView)
        contentView.addSubview(nameLabel)
        contentView.addSubview(phoneNumberLabel)
        
        
        NSLayoutConstraint.activate([
            
            contactImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
            contactImageView.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            contactImageView.widthAnchor.constraint(equalToConstant: 50),
            contactImageView.heightAnchor.constraint(equalToConstant: 50),
            
            nameLabel.leadingAnchor.constraint(equalTo: contactImageView.trailingAnchor, constant: 16),
            nameLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 5),
            
            phoneNumberLabel.leadingAnchor.constraint(equalTo: contactImageView.trailingAnchor, constant: 16),
            phoneNumberLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 0)
        ])
    }
    
    
    func configure(with contact: Contact) {
        nameLabel.text = contact.name
        phoneNumberLabel.text = contact.phoneNumber
        contactImageView.image = contact.image.image
    }
}
