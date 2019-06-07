//
//  Alamofire+Extensions.swift
//  SampleAlamofireNetworkLayer
//
//  Created by Daniel Reyes Sánchez on 07/06/19.
//  Copyright © 2019 Daniel Reyes Sánchez. All rights reserved.
//

import Alamofire

extension SessionManager {
    @discardableResult
    func performRequest<T: Decodable>(
        route: APIRouter,
        decoder: JSONDecoder = JSONDecoder(),
        completion:@escaping(Result<T>) -> Void) -> DataRequest {
        
        return self.request(route).responseData(completionHandler: { (dataResponse) in
            switch dataResponse.result {
            case .success(let data):
                do {
                    let object = try decoder.decode(T.self, from: data)
                    completion(.success(object))
                } catch {
                    completion(.failure(error))
                }
            case .failure(let error): completion(.failure(error))
            }
        })
        
        
    }
}
