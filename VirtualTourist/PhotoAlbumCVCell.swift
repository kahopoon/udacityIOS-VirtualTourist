//
//  PhotoAlbumCVCell.swift
//  VirtualTourist
//
//  Created by Ka Ho Poon on 31/1/2017.
//  Copyright © 2017 Ka Ho Poon. All rights reserved.
//

import UIKit

class PhotoAlbumCVCell: UICollectionViewCell {
    
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    @IBOutlet weak var imageView: UIImageView!
    
    func initWithData(_ source: FlickrImage) {
        URLSession.shared.dataTask(with: source.imageURL()) { (data, response, error) in
            if error == nil {
                DispatchQueue.main.async {
                    self.imageView.image = UIImage(data: data!)
                    self.activityIndicator.stopAnimating()
                }
            }
        }.resume()
    }
    
}
