//
//  TripViewViewController.swift
//  Travel App
//
//  Created by Lakshay Chhabra on 10/07/18.
//  Copyright © 2018 Lakshay Chhabra. All rights reserved.
//

import UIKit

class TripViewViewController: UIViewController, UITableViewDataSource {

    @IBOutlet var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        TripFunctions.readTrip(completion: { [weak self] in
            //completion
            self?.tableView.reloadData()
        })

    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Data.tripModels.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        var cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        if cell == nil {
         cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "cell")
        }
        cell?.textLabel?.text = Data.tripModels[indexPath.row].title
        return cell!
        
    }


}
