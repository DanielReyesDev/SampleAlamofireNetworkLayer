//
//  APIRouter.swift
//  SampleAlamofireNetworkLayer
//
//  Created by Daniel Reyes Sánchez on 6/6/19.
//  Copyright © 2019 Daniel Reyes Sánchez. All rights reserved.
//

import Foundation
import Alamofire

enum APIRouter {
    static private var baseUrl = URL(string: "https://thawing-waters-35250.herokuapp.com")!
    
    
    case getConnectories
    
    var path: String {
        switch self {
        case .getConnectories: return "/connectories"
        }
    }
    
    var headers: [String: String]? {
        switch self {
        case .getConnectories: return nil
        }
    }
    
    var parameters: Parameters {
        switch self {
        case .getConnectories: return [:]
        }
    }
    
    var httpBody: Data? {
        switch self {
        case .getConnectories: return nil
        // try? JSONSerialization.data(withJSONObject: self.parameters, options: .prettyPrinted)
        // default: return try? JSONEncoder().encode()
        }
    }
    
    var httpMethod: HTTPMethod {
        switch self {
        case .getConnectories: return .get
        }
    }
    
}

extension APIRouter: URLRequestConvertible {
    func asURLRequest() throws -> URLRequest {
        var request = URLRequest(url: self.asURL())
        request.allHTTPHeaderFields = self.headers
        request.allowsCellularAccess = true
        request.httpBody = self.httpBody
        request.httpMethod = self.httpMethod.rawValue
        return request
        
    }
}

extension APIRouter: URLConvertible {
    func asURL() -> URL {
        return APIRouter.baseUrl.appendingPathComponent(self.path)
    }
}
