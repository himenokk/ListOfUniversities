//
//  UniList.swift
//  listUni
//
//  Created by Sanzhar Kiyassov on 09.02.2024.
//

import Foundation
import SwiftyJSON



struct UniList {
    var name = ""
    var location = ""
    var logo = ""
    var lat = 0.0
    var long = 0.0
    var image = ""
    
    init(json: JSON){
        
        if let item = json["name"].string{
            name = item
        }
        
        if let item = json["location"].string{
            location = item
        }
        
        if let item = json["logo"].string{
            logo = item
        }
        
        if let item = json["lat"].double{
            lat = item
        }
        
        if let item = json["long"].double{
            long = item
        }
        
        if let item = json["image"].string{
            image = item
        }
        
    }
}


