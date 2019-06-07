//
//  ViewController.swift
//  SampleAlamofireNetworkLayer
//
//  Created by Daniel Reyes Sánchez on 6/6/19.
//  Copyright © 2019 Daniel Reyes Sánchez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let api = AppConnectoriesAPI()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        api.getConnectories { (result) in
            switch result {
            case .success(let connectories):
                print(connectories)
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
    }


}

