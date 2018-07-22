//
//  PopupUIView.swift
//  Travel App
//
//  Created by Lakshay Chhabra on 22/07/18.
//  Copyright © 2018 Lakshay Chhabra. All rights reserved.
//

import UIKit

class PopupUIView: UIView {

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        addShadowAndRoundedCorner()
        backgroundColor = Theme.currentTheme.background
    }
    

}
