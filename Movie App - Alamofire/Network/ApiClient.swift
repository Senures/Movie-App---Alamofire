//
//  ApiClient.swift
//  Movie App - Alamofire
//
//  Created by SEMANUR ESERLER on 22.03.2023.
//

import Foundation
import Alamofire



class ApiClient{
    
    var resultList : [Result]?
    
    
    func fetchCharacterAll ()  {
        
        AF.request("https://rickandmortyapi.com/api/character", method: .get, encoding:URLEncoding.default, headers: nil, interceptor: nil).response { [self] (responseData) in
            
            guard let data = responseData.data else { return }
            
            do{
                let data = try JSONDecoder().decode(CharacterModel.self, from: data)
                print(data.results[0].gender)
                self.resultList = data.results
                
                
                print(self.resultList?[0].id)
            
              /*  self.tableViewlist = data
                self.tableView.reloadData()
                
                //tetikledik
                */
                
            } catch {
                print("catch bloğu")
            }
            
        }
    }

}
