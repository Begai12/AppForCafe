//
//  ViewController3.swift
//  AppForCafeWithcode
//
//  Created by Begai Bakytovna on 22/12/23.
//

import UIKit

class ViewController3: UIViewController {
    let titleLabel = UILabel()
    let saladLabel = UILabel()
    let priceLabel = UILabel()
    let ingredientsLabel = UILabel()
    let salad2Label = UILabel()
    let price2Label = UILabel()
    let ingredients2Label = UILabel()
    let lastButton = UIButton()
    var fullName: String!
    var table: String!

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemMint
        
        self.titleLabel.frame = CGRect(x: 150, y: 75, width: 100, height: 16)
        self.titleLabel.text = "Bill"
        self.titleLabel.textColor = .black
        self.titleLabel.font = .boldSystemFont(ofSize: 19)
        
        self.saladLabel.frame = CGRect(x: 40, y: 175, width: 250, height: 20)
        self.view.addSubview(saladLabel)
        self.saladLabel.text = "Quinoa salad"
        self.saladLabel.textColor = .black
        
        self.priceLabel.frame = CGRect(x: 305, y: 175, width: 250, height: 20)
        self.view.addSubview(priceLabel)
        self.priceLabel.text = "95"
        self.priceLabel.textColor = .black
        
        self.ingredientsLabel.frame = CGRect(x: 40, y: 200, width: 300, height: 20)
        self.view.addSubview(ingredientsLabel)
        self.ingredientsLabel.text = "Mix quinoa, baby kale, green apple, blueberry"
        self.ingredientsLabel.textColor = .gray
        
        self.salad2Label.frame = CGRect(x: 40, y: 250, width: 250, height: 20)
        self.view.addSubview(salad2Label)
        self.salad2Label.text = "Lentil salad"
        self.salad2Label.textColor = .black
        
        self.price2Label.frame = CGRect(x: 305, y: 250, width: 250, height: 20)
        self.view.addSubview(price2Label)
        self.price2Label.text = "79"
        self.price2Label.textColor = .black
        
        self.ingredients2Label.frame = CGRect(x: 40, y: 275, width: 300, height: 20)
        self.view.addSubview(ingredients2Label)
        self.ingredients2Label.text = "Lentil, baby spinach, avacado, almonds"
        self.ingredients2Label.textColor = .gray
        
        self.lastButton.frame = CGRect(x: 75, y: 500, width: 250, height: 50)
        self.view.addSubview(lastButton)
        self.lastButton.backgroundColor = .red
        self.lastButton.setTitle("Total: 174", for: .normal)
        self.lastButton.layer.cornerRadius = 6
        self.lastButton.setTitleColor(UIColor.white, for: .normal)

        
    }
    
}
