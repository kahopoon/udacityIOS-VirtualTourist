//
//  Photo+CoreDataProperties.swift
//  VirtualTourist
//
//  Created by Ka Ho Poon on 7/2/2017.
//  Copyright © 2017 Ka Ho Poon. All rights reserved.
//

import Foundation
import CoreData


extension Photo {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Photo> {
        return NSFetchRequest<Photo>(entityName: "Photo");
    }

    @NSManaged public var imageData: NSData?
    @NSManaged public var imageURL: String?
    @NSManaged public var index: Int16
    @NSManaged public var pin: Pin?

}
