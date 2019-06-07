//
//  AppPlacesAPI.swift
//  SampleAlamofireNetworkLayer
//
//  Created by Daniel Reyes Sánchez on 6/6/19.
//  Copyright © 2019 Daniel Reyes Sánchez. All rights reserved.
//

import Foundation
import Alamofire

class AppConnectoriesAPI: ConnectoriesAPI {

    let sessionManager: SessionManager
    
    init() {
        self.sessionManager = SessionManager.default
    }
    
    func getConnectories(completion: @escaping (Result<[Connectory]>) -> Void) {
        let router = APIRouter.getConnectories
        self.sessionManager.performRequest(route: router) { (result: Result<[Connectory]>) in
            completion(result)
        }
    }
    
    
    
    
}
