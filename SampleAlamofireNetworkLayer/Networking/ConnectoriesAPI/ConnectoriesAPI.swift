//
//  API.swift
//  SampleAlamofireNetworkLayer
//
//  Created by Daniel Reyes Sánchez on 6/6/19.
//  Copyright © 2019 Daniel Reyes Sánchez. All rights reserved.
//

import Foundation
import Alamofire

public protocol ConnectoriesAPI {
    func getConnectories(completion: @escaping(Result<[Connectory]>) -> Void )
}


