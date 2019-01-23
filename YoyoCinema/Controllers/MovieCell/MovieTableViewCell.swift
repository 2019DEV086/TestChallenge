//
//  MovieTableViewCell.swift
//  YoyoCinema
//
//  Created by 2019DEV086 on 13/11/2018.
//  Copyright © 2018 2019DEV086. All rights reserved.
//

import UIKit

class MovieTableViewCell: UITableViewCell {
    
    var imageLoadDataTask:URLSessionDataTask?
    
    var imageURL: URL? {
        didSet {
            guard imageView != nil else {
                return
            }
            
            imageView!.image = UIImage(named: "Placeholder")
            
            if let url = imageURL {
                imageLoadDataTask = imageView!.downloadedFrom(url: url)
            }
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func cancelImageDownload() {
        if let task = imageLoadDataTask {
            task.cancel()
        }
        
    }
    
}
