//
//  WebService.swift
//  GoodNews
//
//  Created by Ishaq Amin on 02/06/2020.
//  Copyright © 2020 Ishaq Amin. All rights reserved.
//

import Foundation

class WebService {
    
    func getArticles(url: URL, completion: @escaping ([Any]?) -> ()) {
        
        URLSession.shared.dataTask(with: url) { (data,reponse,error) in
            
            if let error = error {
                print(error.localizedDescription)
                completion(nil)
            } else if let data =  data {
                
                
                print(data)
                
            }
            
        }.resume()
    }
    
}
