//
//  SettingViewController.swift
//  Travel App
//
//  Created by Lakshay Chhabra on 11/07/18.
//  Copyright © 2018 Lakshay Chhabra. All rights reserved.
//

import UIKit

class SettingViewController: UIViewController {

    
    
    
    var lightThemeFlag : Bool = true
    @IBOutlet var buttonSwitch: UISwitch!
    @IBOutlet var lightThemeLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        applyTheme()
        configureButton()
        
    }
    fileprivate func configureButton() {
        lightThemeFlag = UserDefaults.standard.bool(forKey: "LightThemeFlag")
        buttonSwitch.isOn =  lightThemeFlag ? true : false
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    
        configureButton()
       
    }

    fileprivate func applyTheme() {
        view.backgroundColor = Theme.currentTheme.background
        lightThemeLabel.textColor = Theme.currentTheme.fontColor
    }

    @IBAction func themeChanged(_ sender: UISwitch) {
        
        if  sender.isOn {
            Theme.currentTheme = LightTheme()
            lightThemeFlag = true
        }
        else{
            Theme.currentTheme = DarkTheme()
            lightThemeFlag = false
        }
       
        
        UserDefaults.standard.set(sender.isOn, forKey: "LightTheme")
        UserDefaults.standard.set(lightThemeFlag, forKey: "LightThemeFlag")
        
        applyTheme()
        
    }
    

}
