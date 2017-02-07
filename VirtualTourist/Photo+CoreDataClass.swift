//
//  Photo+CoreDataClass.swift
//  VirtualTourist
//
//  Created by Ka Ho Poon on 7/2/2017.
//  Copyright © 2017 Ka Ho Poon. All rights reserved.
//

import Foundation
import CoreData


public class Photo: NSManagedObject {
    
    convenience init(index:Int, imageURL: String, imageData: NSData?, context: NSManagedObjectContext) {
        if let ent = NSEntityDescription.entity(forEntityName: "Photo", in: context) {
            self.init(entity: ent, insertInto: context)
            self.index = Int16(index)
            self.imageURL = imageURL
            self.imageData = imageData
        } else {
            fatalError("Unable to find Entity name!")
        }
    }
    
}
