//
//  ViewController.swift
//  Test-API
//
//  Created by phamtu on 07/07/2021.
//

import UIKit
import Alamofire

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let service = Service(baseUrl: "https://rickandmortyapi.com/")
        service.getAllAPI(endPoint: "api")
        let service1 = Service(baseUrl: "https://rickandmortyapi.com/api/")
        service.getAllAPI(endPoint: "character")
    }


}

