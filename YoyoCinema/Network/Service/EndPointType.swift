//
//  EndPointType.swift
//  YoyoCinema
//
//  Created by 2019DEV086 on 13/11/2018.
//  Copyright © 2018 2019DEV086. All rights reserved.
//

import Foundation

protocol EndPointType {
    var baseURL: URL { get }
    var path: String { get }
    var httpMethod: HTTPMethod { get }
    var task: HTTPTask { get }
    var headers: HTTPHeaders? { get }
}
