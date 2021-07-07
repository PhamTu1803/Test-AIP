//
//  Service.swift
//  Test-API
//
//  Created by phamtu on 07/07/2021.
//

import Foundation
import Alamofire

//https://rickandmortyapi.com/api/character
//https://rickandmortyapi.com/api/location
//https://rickandmortyapi.com/api/episode

class Service {
    
    fileprivate var baseUrl = ""
    //MARK: - Init
    init(baseUrl : String) {
        self.baseUrl = baseUrl
    }
    //MARK: - Function getAllAPI
    func getAllAPI(endPoint : String) {
        AF.request(self.baseUrl + endPoint , method: .get , parameters: nil, encoding: URLEncoding.default  , headers: nil, interceptor: nil ).response {
            (responseData) in
            print("got data")
            guard let data = responseData.data else {return}
            do{
            let character  = try JSONDecoder().decode(Results.self, from: data)
                print("character == \(character)")
            } catch {
                print("Error\(error)")
            }
            
        }
    }
    //MARK:- Function get character
    func getCharacter(endPoint : String) {
        AF.request(self.baseUrl + endPoint , method: .get , parameters: nil, encoding: URLEncoding.default  , headers: nil, interceptor: nil ).response {
            (responseData) in
            print("got data")
            guard let data = responseData.data else {return}
            do{
            let character  = try JSONDecoder().decode(Characters1.self, from: data)
                print("character == \(character)")
            } catch {
                print("Error\(error)")
            }
            
        }
    }
}
