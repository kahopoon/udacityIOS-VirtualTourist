//
//  Pin+CoreDataClass.swift
//  VirtualTourist
//
//  Created by Ka Ho Poon on 7/2/2017.
//  Copyright © 2017 Ka Ho Poon. All rights reserved.
//

import Foundation
import CoreData


public class Pin: NSManagedObject {
    
    convenience init(latitude: Double, longitude: Double, context: NSManagedObjectContext) {
        if let ent = NSEntityDescription.entity(forEntityName: "Pin", in: context) {
            self.init(entity: ent, insertInto: context)
            self.latitude   = latitude
            self.longitude  = longitude
        } else {
            fatalError("Unable to find Entity name!")
        }
    }
    
}
