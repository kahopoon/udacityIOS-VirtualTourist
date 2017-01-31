//
//  FlickrImageObject.swift
//  VirtualTourist
//
//  Created by Ka Ho Poon on 31/1/2017.
//  Copyright © 2017 Ka Ho Poon. All rights reserved.
//

import Foundation

struct FlickrImage {
    
    let id:String
    let secret:String
    let server:String
    let farm:Int
    
    func imageURL() -> URL {
        return URL(string: "https://farm\(farm).staticflickr.com/\(server)/\(id)_\(secret)_q.jpg")!
    }
    
}
