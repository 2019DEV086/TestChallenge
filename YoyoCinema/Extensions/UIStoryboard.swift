//
//  UIStoryboard.swift
//  YoyoCinema
//
//  Created by 2019DEV086 on 13/11/2018.
//  Copyright © 2018 2019DEV086. All rights reserved.
//

import UIKit

extension UIStoryboard {
    
    struct Main {
        
        static func instantiateMovieDetailsViewController() -> MovieDetailsViewController {
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let controller = storyboard.instantiateViewController(withIdentifier: "MovieDetailsVC") as! MovieDetailsViewController
            return controller
        }
    }
    
}
