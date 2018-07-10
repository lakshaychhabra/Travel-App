//
//  TripTableViewCell.swift
//  Travel App
//
//  Created by Lakshay Chhabra on 10/07/18.
//  Copyright © 2018 Lakshay Chhabra. All rights reserved.
//

import UIKit

class TripTableViewCell: UITableViewCell {

    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var cardView: UIView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        cardView.addShadowAndRoundedCorner()
        cardView.backgroundColor = Theme.accent
        titleLabel.font = UIFont(name: Theme.mainFontName, size: 32)
    }
    func setup(tripModel: TripModal){
        titleLabel.text = tripModel.title
    }


}
