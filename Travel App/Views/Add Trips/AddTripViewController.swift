//
//  AddTripViewController.swift
//  Travel App
//
//  Created by Lakshay Chhabra on 22/07/18.
//  Copyright © 2018 Lakshay Chhabra. All rights reserved.
//

import UIKit

class AddTripViewController: UIViewController {

  
    @IBOutlet var addTrip: UILabel!
    @IBOutlet var textField: UITextField!
    @IBOutlet var saveButton: UIButton!
    @IBOutlet var cancelButton: UIButton!
    
    var doneSaving : (() -> ())?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        addTrip.font = UIFont(name: Theme.currentTheme.mainFontName, size: 24)
    }

    @IBAction func cancelButtonPressed(_ sender: Any) {
        dismiss(animated: true)
    }
    
    @IBAction func save(_ sender: Any) {
        TripFunctions.createTrip(tripModel: TripModal(title: textField.text!))
        if let doneSaving = doneSaving{
            doneSaving()
        }
        dismiss(animated: true)
    }
}
