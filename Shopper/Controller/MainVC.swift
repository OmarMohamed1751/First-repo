//
//  ViewController.swift
//  Shopper
//
//  Created by Omar on 4/10/19.
//  Copyright © 2019 Omar. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    
    @IBOutlet weak var wage_tf: CurrencyTextField!
    
    @IBOutlet weak var itemPrice_tf: CurrencyTextField!
    
    @IBOutlet weak var result_lbl: UILabel!
    
    @IBOutlet weak var hours_lbl: UILabel!
    
    
    // MARK: - view did load
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        viewSetup()
        calculateBtn()
        
    }
    //...
    
    // MARK: - view setup
    func viewSetup(){
        result_lbl.isHidden = true
        hours_lbl.isHidden = true
    }
    //...
    
    // MARK: - making the calculate btn and functions
    func calculateBtn(){
        let calculate_btn = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        calculate_btn.backgroundColor = #colorLiteral(red: 1, green: 0.5781051517, blue: 0, alpha: 1)
        calculate_btn.setTitle("Calculate", for: .normal)
        calculate_btn.setTitleColor(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1), for: .normal)
        calculate_btn.addTarget(self, action: #selector(self.calculate), for: .touchUpInside)
        
        wage_tf.inputAccessoryView = calculate_btn // input accessory to make the btn appear when the text field is clicked
        itemPrice_tf.inputAccessoryView = calculate_btn
    }

    @objc func calculate(){
        if let wageText = wage_tf.text, let priceText = itemPrice_tf.text{ // to make sure that the fields aren't empty
            if let wage = Double(wageText), let price = Double(priceText){ // to turn the numbers into double
                view.endEditing(true) // to shut down the keyboard
                result_lbl.isHidden = false
                hours_lbl.isHidden = false
                result_lbl.text = "\(Wage.getHours(wage: wage, price: price))"
            }
        }
    }
    //...
    
    
    // MARK: - clear btn
    @IBAction func clear_btn(_ sender: UIButton) {
        wage_tf.text = ""
        itemPrice_tf.text = ""
        
        result_lbl.isHidden = true
        hours_lbl.isHidden = true
    }
    //...
    
}

