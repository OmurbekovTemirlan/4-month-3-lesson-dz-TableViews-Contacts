//
//  ContactsViewController.swift
//  4 month 3 lesson dz
//
//  Created by Apple on 20.2.2024.
//

import UIKit


class ContactsViewController: UIViewController, UITableViewDataSource{
   
    
    private let contactsLbl = MakerView().makerLabel(
        text: "My contacts",
        weight: .bold
    )
    
    private var tableView: UITableView!
    
    var idCell = "Cell"
    
    var contacts = [
        Contact(name: "Tima", phoneNumber: "0502030422", image: UIImageView(image: UIImage(named: "user"))),
        Contact(name: "Ali", phoneNumber: "07020402321", image: UIImageView(image: UIImage(named: "user1"))),
        Contact(name: "Alan", phoneNumber: "0503040524", image: UIImageView(image: UIImage(named: "user2"))),
        Contact(name: "Beks", phoneNumber: "0779343276", image: UIImageView(image: UIImage(named: "user3"))),
        Contact(name: "Kushu", phoneNumber: "0999234354", image: UIImageView(image: UIImage(named: "user4"))),
        Contact(name: "Bek", phoneNumber: "0502988922", image: UIImageView(image: UIImage(named: "user5"))),
        Contact(name: "Nurs", phoneNumber: "0500304300", image: UIImageView(image: UIImage(named: "user6"))),
        Contact(name: "AIbek", phoneNumber: "0770123212", image: UIImageView(image: UIImage(named: "user7"))),
        Contact(name: "Beka", phoneNumber: "0990284322", image: UIImageView(image: UIImage(named: "user8"))),
        Contact(name: "Kozho", phoneNumber: "0503020118", image: UIImageView(image: UIImage(named: "user9"))),
        Contact(name: "Emil", phoneNumber: "0501234211", image: UIImageView(image: UIImage(named: "user10"))),
        Contact(name: "Erik", phoneNumber: "0777777777", image: UIImageView(image: UIImage(named: "user11"))),
        Contact(name: "Khan", phoneNumber: "0999238756", image: UIImageView(image: UIImage(named: "user12"))),
        Contact(name: "Chika", phoneNumber: "0700327865", image: UIImageView(image: UIImage(named: "user13"))),
        Contact(name: "Ai", phoneNumber: "0500098765", image: UIImageView(image: UIImage(named: "user14"))),
        Contact(name: "Temirlan", phoneNumber: "0502050823", image: UIImageView(image: UIImage(named: "user15")))
    ]
    
    
    override func viewDidLoad() {
        view.backgroundColor = .white
        tableView = UITableView()
        
        setupUI()
        
        tableView.dataSource = self
        
        tableView.register(ContactTableViewCell.self, forCellReuseIdentifier: "ContactCell")
    }
    private func setupUI() {
        tableView.translatesAutoresizingMaskIntoConstraints = false

        view.addSubview(contactsLbl)
        NSLayoutConstraint.activate([
        contactsLbl.topAnchor.constraint(equalTo: view.topAnchor, constant: 60),
        contactsLbl.centerXAnchor.constraint(equalTo: view.centerXAnchor),
        ])
        view.addSubview(tableView)
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 0),
            tableView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 16),
            tableView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -16),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0)
        ])
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contacts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ContactCell", for: indexPath) as! ContactTableViewCell
        let contact = contacts[indexPath.row]
        cell.configure(with: contact)
        return cell
    }
    
    
    
    
}
