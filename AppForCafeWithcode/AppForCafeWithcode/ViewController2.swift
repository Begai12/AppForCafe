//
//  ViewController2.swift
//  AppForCafeWithcode
//
//  Created by Begai Bakytovna on 21/12/23.
//

import UIKit

class ViewController2: UIViewController {
    let nameLabel = UILabel()
    let fullnameLabel = UILabel()
    let fullName = UITextField()
    let guestCountLabel = UILabel()
    let guestCount = UITextField()
    let tableLabel = UILabel()
    let table = UITextField()
    let reserveLabel = UILabel()
    let reserveSwitch = UISwitch()
    let paymentLabel = UILabel()
    let paymentSwitch = UISwitch()
    let roomLabel = UILabel()
    let roomSwitch = UISwitch()
    let billButton = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemMint
        self.nameLabel.frame = CGRect(x: 150, y: 75, width: 100, height: 16)
        self.view.addSubview(nameLabel)
        self.nameLabel.text = "Laduree"
        self.nameLabel.textColor = .green
        self.nameLabel.font = .boldSystemFont(ofSize: 19)
        
        
        self.fullnameLabel.frame = CGRect(x: 75, y: 150, width: 250, height: 16)
        self.view.addSubview(fullnameLabel)
        self.fullnameLabel.text = "Name and surname"
        self.fullnameLabel.textColor = .red
        
        self.fullName.frame = CGRect(x: 75, y: 175, width: 250, height: 35)
        self.view.addSubview(fullName)
        self.fullName.borderStyle = .roundedRect
        
        self.guestCountLabel.frame = CGRect(x: 75, y: 265, width: 250, height: 16)
        self.view.addSubview(guestCountLabel)
        self.guestCountLabel.text = "Number of guests"
        self.guestCountLabel.textColor = .red
        
        
        self.guestCount.frame = CGRect(x: 75, y: 290, width: 250, height: 35)
        self.view.addSubview(guestCount)
        self.guestCount.borderStyle = .roundedRect
        
        self.tableLabel.frame = CGRect(x: 75, y: 380, width: 250, height: 16)
        self.view.addSubview(tableLabel)
        self.tableLabel.text = "Table number"
        self.tableLabel.textColor = .red
        
        self.table.frame = CGRect(x: 75, y: 405, width: 250, height: 35)
        self.view.addSubview(table)
        self.table.borderStyle = .roundedRect
        
        self.reserveLabel.frame = CGRect(x: 75, y: 495, width: 250, height: 16)
        self.view.addSubview(reserveLabel)
        self.reserveLabel.text = "Did you reserve a table?"
        self.reserveLabel.textColor = .red
        
        self.reserveSwitch.frame = CGRect(x: 275, y: 488, width: 0, height: 0)
        self.view.addSubview(reserveSwitch)
        
        self.paymentLabel.frame = CGRect(x: 75, y: 555, width: 250, height: 16)
        self.view.addSubview(paymentLabel)
        self.paymentLabel.text = "Prepayment?"
        self.paymentLabel.textColor = .red
        
        self.paymentSwitch.frame = CGRect(x: 275, y: 548, width: 0, height: 0)
        self.view.addSubview(paymentSwitch)
        
        self.roomLabel.frame = CGRect(x: 75, y: 615, width: 250, height: 16)
        self.view.addSubview(roomLabel)
        self.roomLabel.text = "VIP room"
        self.roomLabel.textColor = .red
        
        self.roomSwitch.frame = CGRect(x: 275, y: 608, width: 0, height: 0)
        self.view.addSubview(roomSwitch)
        
        self.billButton.frame = CGRect(x: 75, y: 700, width: 250, height: 50)
        self.view.addSubview(billButton)
        self.billButton.backgroundColor = .red
        self.billButton.setTitle("Bill", for: .normal)
        self.billButton.layer.cornerRadius = 5
        self.billButton.setTitleColor(UIColor.white, for: .normal)
        self.billButton.addTarget(self, action: #selector(buttonClick), for: .touchUpInside)

        // Do any additional setup after loading the view.
    }
    @objc func buttonClick () {
        if fullName.text!.isEmpty || guestCount.text!.isEmpty || table.text!.isEmpty {
            let alert = UIAlertController(title: "Error", message: "Fill in all the fields", preferredStyle: .alert)
            let action = UIAlertAction(title: "Ok", style: .default)
            alert.addAction(action)
            self.present(alert, animated: true)
        }
        let alert = UIAlertController(title: "Present the bill", message: " ", preferredStyle: .alert)
        let alertCancelButton = UIAlertAction(title: "Cancel", style: .default)
        let alertBillButton = UIAlertAction(title: "Yes", style: .default) { _ in
           let thirdController = ViewController3 ()
            thirdController.fullName = self.fullName.text ?? " "
            thirdController.table = self.table.text ?? " "
           self.navigationController?.pushViewController(thirdController, animated: true)
        }
        alert.addAction(alertBillButton)
        alert.addAction(alertCancelButton)
        self.present(alert, animated: true)
    }

    

}
