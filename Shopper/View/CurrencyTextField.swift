//
//  CurrencyTextField.swift
//  Shopper
//
//  Created by Omar on 5/8/19.
//  Copyright © 2019 Omar. All rights reserved.
//

import UIKit

@IBDesignable // to make the stroyboard look exactly like the app

class CurrencyTextField: UITextField {
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        customizedView()
    }
    
    override func prepareForInterfaceBuilder() {
        customizedView()
    }
    
    // making the currency sympol
    override func draw(_ rect: CGRect) {
        let size: CGFloat = 20
        let currencyLbl = UILabel(frame: CGRect(x: 5, y: (frame.size.height / 2) - size / 2, width: size, height: size))
        currencyLbl.backgroundColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 0.8)
        currencyLbl.textAlignment = .center
        currencyLbl.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        currencyLbl.layer.cornerRadius = 5.0
        currencyLbl.clipsToBounds = true
        
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.locale = .current
        
        currencyLbl.text = formatter.currencySymbol
        
        addSubview(currencyLbl)
    }
    //...
    
    // textfield customization
    func customizedView(){
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.25)
        layer.cornerRadius = 5.0
        clipsToBounds = true
        textAlignment = .center
        
        if let placeholder = placeholder{
            let place = NSAttributedString(string: placeholder, attributes: [.foregroundColor: #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)])
            attributedPlaceholder = place
            textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        }
    }
    //...
    
    
}
