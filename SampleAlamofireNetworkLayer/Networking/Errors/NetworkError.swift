//
//  NetworkError.swift
//  SampleAlamofireNetworkLayer
//
//  Created by Daniel Reyes Sánchez on 07/06/19.
//  Copyright © 2019 Daniel Reyes Sánchez. All rights reserved.
//

import Foundation

enum NetworkError: Error {
    case unknown
    case decodingError
    case noDataError
}
