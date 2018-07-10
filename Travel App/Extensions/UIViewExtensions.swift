//
//  UIViewExtensions.swift
//  Travel App
//
//  Created by Lakshay Chhabra on 10/07/18.
//  Copyright © 2018 Lakshay Chhabra. All rights reserved.
//

import UIKit

extension UIView{

    func addShadowAndRoundedCorner(){
        
        layer.shadowOpacity = 1
        layer.shadowOffset = CGSize.zero
        layer.shadowColor = UIColor.gray.cgColor
        layer.cornerRadius = 10
    }

}
