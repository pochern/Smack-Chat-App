//
//  GradientView.swift
//  Smack Chat App
//
//  Created by Polina Chernomaz on 2/11/18.
//  Copyright © 2018 Polina Chernomaz. All rights reserved.
//

import UIKit

@IBDesignable // Allows things to render inside the storyboard
class GradientView: UIView {
    
    // creating a color variable that can be changed in the variable
    @IBInspectable var topColor: UIColor = #colorLiteral(red: 0.2901960784, green: 0.3019607843, blue: 0.8470588235, alpha: 1) {
        didSet {
            self.setNeedsLayout()
        }
    }
    // variable that can be changed inside the storyboard
    
    @IBInspectable var bottomColor: UIColor = #colorLiteral(red: 0.1725490196, green: 0.831372549, blue: 0.8470588235, alpha: 1) {
        didSet {
            self.setNeedsLayout()
        }
    }
    
    override func layoutSubviews() {
        // create a layer
        let gradientLayer = CAGradientLayer()
        
        // set the layer colors, start + end points, and the frame
        gradientLayer.colors = [topColor.cgColor, bottomColor.cgColor]
            //doesn't have to be 2 colors, can be 3, 4, 5
        gradientLayer.startPoint = CGPoint(x: 0, y: 0)
        gradientLayer.endPoint = CGPoint(x: 1, y: 1)
        gradientLayer.frame = self.bounds
        // layer created ^
        
        // now we add the layer we just created
        self.layer.insertSublayer(gradientLayer, at: 0)
        // CA stands for Core Animation
    }
}
