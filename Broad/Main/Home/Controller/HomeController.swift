//
//  HomeController.swift
//  Broad
//
//  Created by 王洋 on 2019/2/1.
//  Copyright © 2019 wannayoung. All rights reserved.
//

import UIKit

class HomeController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        NetworkManager.share.getDataWith(path: weatherApi, parama: ["key": userKey, "city": "shanghai"], successHandler: { (weather: Weather) in
            
        })
    }
    

}
