//
//  TripFunctions.swift
//  Travel App
//
//  Created by Lakshay Chhabra on 10/07/18.
//  Copyright © 2018 Lakshay Chhabra. All rights reserved.
//

import Foundation


class TripFunctions {
    
    static func createTrip(tripModel : TripModal){
        
    }
    static func readTrip(completion: @escaping () -> ()){
        
        DispatchQueue.global(qos: .userInteractive).async {
            if Data.tripModels.count == 0 {
                Data.tripModels.append(TripModal(title: "Trip To Bali"))
                Data.tripModels.append(TripModal(title: "India"))
                Data.tripModels.append(TripModal(title: "Iceland"))
            }
            DispatchQueue.main.async {
                completion()
            }
            
        }
            
        
       
        
        
    }
    static func updateTrip(tripModel : TripModal){
        
    }
    static func deleteTrip(tripModel : TripModal){
        
    }
    
}
