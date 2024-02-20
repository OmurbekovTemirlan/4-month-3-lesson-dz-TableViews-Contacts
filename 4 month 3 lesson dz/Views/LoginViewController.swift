//
//  LoginViewController.swift
//  4 month 3 lesson dz
//
//  Created by Apple on 20.2.2024.
//

import UIKit

class LoginViewController: UIViewController {
    
    private let customView: CostumViews = {
        let costum = CostumViews()
        costum.translatesAutoresizingMaskIntoConstraints = false
        return costum
    }()
    
    
    private let bannerImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "baner")
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    
    private let enterlb = MakerView().makerLabel(
        text: "Enter Your Mobile Number",
        size: 17,
        textColor: UIColor(hex: "#F2796B"),
        numberOfLines: 1)
    
    private let telNumberLbl = MakerView().makerLabel(
        text: "Phone Number",
        size: 12,
        weight: .bold,
        textColor: .systemGray2)
    
    private let numberTF = MakerView().makerTextField(
        placeholder: "Enter Number",
        cornerRadius: 10,
        borderColor: UIColor.gray.cgColor, 
        borderWidth: 2)
    
    
    
    private let changeNumberBtn = MakerView().makeButton(
        title: "Change Number ?",
        fontBtn: UIFont.boldSystemFont(ofSize: 12),
        colorBt: .systemGray,
        numberOfLines: 1)
    
    private let loginBtn = MakerView().makeButton(
        title: "Login",
        colorBt: .white,
        backgroundColorBT: UIColor(hex: "#F2796B"),
        cornerRadiusBt: 10,
        target: self,
        action: #selector(loginTapped))
    
    
    private let googleBtn = MakerView().makeButton(
        imageBtn: UIImage(named: "") ?? UIImage(),
        title: "google",
        fontBtn: UIFont(name: "Outfit-Medium", size: 17) ?? UIFont.systemFont(ofSize: 16))
    
    
    private let infoLbl = MakerView().makerLabel(
        text: "You Don’t have an account ?",
        size: 12,
        weight: .regular,
        textColor: .systemGray2)
    
    
    private let signUpbtn: UILabel = {
        let label = UILabel()
        label.text = "Sign up"
        label.font = UIFont.boldSystemFont(ofSize: 12)
        label.textColor = .black
        label.sizeToFit()
        label.textAlignment = .center
        label.isUserInteractionEnabled = true
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    
    
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGray6
        costumViewAdd()
        addBanner()
        addTF()
        bottomButons()
        infoLbls()
        
        
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(signUptapped(_:)))
        signUpbtn.addGestureRecognizer(tapGesture)
        
    }
    
    
    private func costumViewAdd(){
        view.addSubview(customView)
        NSLayoutConstraint.activate(
            [customView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
             customView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 5),
             customView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
             customView.heightAnchor.constraint(equalToConstant: 50)
            ])
    }
    private func addBanner(){
        view.addSubview(bannerImage)
        NSLayoutConstraint.activate([
            bannerImage.topAnchor.constraint(equalTo: customView.bottomAnchor, constant: 50),
            bannerImage.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 57),
            bannerImage.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 61),
            bannerImage.heightAnchor.constraint(equalToConstant: 231),
            bannerImage.widthAnchor.constraint(equalToConstant: 296)
        ])
        view.addSubview(enterlb)
        NSLayoutConstraint.activate([
            enterlb.topAnchor.constraint(equalTo: bannerImage.bottomAnchor, constant: 15),
            enterlb.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 94),
            enterlb.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -85),
            enterlb.widthAnchor.constraint(equalToConstant: 245),
            enterlb.heightAnchor.constraint(equalToConstant: 28)
        ])
    }
    private func addTF(){
        
        view.addSubview(telNumberLbl)
        NSLayoutConstraint.activate([
            telNumberLbl.topAnchor.constraint(equalTo: enterlb.bottomAnchor, constant: 10),
            telNumberLbl.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30)
        ])
        
        view.addSubview(numberTF)
        NSLayoutConstraint.activate([
            numberTF.topAnchor.constraint(equalTo: enterlb.bottomAnchor, constant: 31),
            numberTF.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 23),
            numberTF.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -23),
            numberTF.heightAnchor.constraint(equalToConstant: 50)
        ])
        view.addSubview(changeNumberBtn)
        NSLayoutConstraint.activate([
            changeNumberBtn.topAnchor.constraint(equalTo: numberTF.bottomAnchor, constant: 10),
            changeNumberBtn.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            changeNumberBtn.heightAnchor.constraint(equalToConstant: 18),
            changeNumberBtn.widthAnchor.constraint(equalToConstant: 130)
        ])
    }
    private func bottomButons(){
        view.addSubview(loginBtn)
        NSLayoutConstraint.activate([
            loginBtn.topAnchor.constraint(equalTo: changeNumberBtn.bottomAnchor, constant: 35),
            loginBtn.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            loginBtn.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            loginBtn.heightAnchor.constraint(equalToConstant: 50),
            loginBtn.widthAnchor.constraint(equalToConstant: 367)
        ])
        view.addSubview(googleBtn)
        NSLayoutConstraint.activate([
            googleBtn.topAnchor.constraint(equalTo: loginBtn.bottomAnchor, constant: 55),
            googleBtn.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 170),
            googleBtn.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -150)
        ])
    }
    private func infoLbls(){
        view.addSubview(infoLbl)
        NSLayoutConstraint.activate([
            infoLbl.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: 10),
            infoLbl.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 97),
            infoLbl.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -97)
        ])
        
        view.addSubview(signUpbtn)
        NSLayoutConstraint.activate([
            signUpbtn.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: 10),
            signUpbtn.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -87)
        ])
    }
    
    private func ValudateNumbers() -> Bool {
        let countryCode = "+996"
        let phoneNumber = numberTF.text ?? ""
        return phoneNumber.hasPrefix(countryCode) && phoneNumber.count == (countryCode.count + 9)
    }
    
    @objc private func loginTapped(_ sender: UIButton) {
        if ValudateNumbers(){
            numberTF.layer.borderWidth = 2
            let vc = ContactsViewController()
            navigationController?.pushViewController(vc, animated: true)
        } else {
            numberTF.placeholder = "Введите номер с кодом страны +996 "
            numberTF.layer.borderColor = UIColor.red.cgColor
            numberTF.layer.borderWidth = 2
        }
    }
        
       
    
//    
//    private func validatePhoneNumber(_ tf: UITextField, _ label: UILabel, _ error: String) -> Bool {
//        guard let text = tf.text?.trimmingCharacters(in: .whitespacesAndNewlines), !text.isEmpty else {
//            return false
//        }
//        let numericCharacterSet = CharacterSet.decimalDigits
//        guard text.rangeOfCharacter(from: numericCharacterSet.inverted) == nil else {
//            showError(label, tf, error)
//            return false
//        }
//        
//        if text.count <= 12 || !text.hasPrefix("+996") {
//            showError(label, tf, error)
//            return false
//        }
//        
//        clearError(label, tf, "Отлично!!!")
//        return true
//    }

//    
//    private func showError(_ label: UILabel, _ tf: UITextField, _ error: String) {
//        label.text = error
//        label.textColor = .red
//        tf.layer.borderWidth = 1
//        tf.layer.borderColor = UIColor.red.cgColor
//    }
//    
//    private func clearError(_ label: UILabel, _ tf: UITextField, _ succses: String) {
//        label.text = succses
//        label.textColor = .green
//        tf.layer.borderWidth = 0
//        tf.layer.borderColor = UIColor.clear.cgColor
//    }
//    
    
    
    
    
    @objc private func signUptapped(_ sender: UIButton) {
        
    }
    
    
}

