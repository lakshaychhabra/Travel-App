//
//  TripViewViewController.swift
//  Travel App
//
//  Created by Lakshay Chhabra on 10/07/18.
//  Copyright © 2018 Lakshay Chhabra. All rights reserved.
//

import UIKit

class TripViewViewController: UIViewController {

    @IBOutlet var tableView: UITableView!
    @IBOutlet var addButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        TripFunctions.readTrip(completion: { [weak self] in
            //completion
            self?.tableView.reloadData()
        })
        view.backgroundColor = Theme.currentTheme.background
        addButton.backgroundColor = Theme.currentTheme.tint
        addButton.layer.cornerRadius = addButton.frame.height / 2
        addButton.layer.shadowOpacity = 0.25
        addButton.layer.shadowRadius = 5
        addButton.layer.shadowOffset = CGSize(width: 0, height: 10)
        
    }
    
    
//    @IBAction func addButtonPresses(_ sender: Any) {
//        
//        print("Buttonn Pressed")
//        performSegue(withIdentifier: "toAddTrip", sender: nil)
//    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        view.backgroundColor = Theme.currentTheme.background
        tableView.reloadData()
    }
}
extension TripViewViewController: UITableViewDelegate, UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Data.tripModels.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! TripTableViewCell
        
        cell.setup(tripModel: Data.tripModels[indexPath.row])
        return cell
        
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 160
    }
    

}
