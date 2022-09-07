//
//  StoreViewModel.swift
//  StoreApp (iOS)
//
//  Created by MacBook on 2022-09-07.
//

import SwiftUI

class StoreViewModel : ObservableObject {
    
    @Published var promotionLists : Panats?
    
    init() {
        getPlanetData()
    }
    
    func getPlanetData() {
        
        URLSession.fetch(request: URLRequest.getFormSirasa(), completion: { resp in
            switch resp {
                
            case .success(let result):
                
                if let data = result.data(using: .utf8){
                    do {
                        let decodedResponse = try JSONDecoder().decode(Panats.self, from: data)
                        DispatchQueue.main.async {
                            // print the decoded Response.
                            print(decodedResponse)
                            self.promotionLists = decodedResponse
                        }
                    } catch let jsonError as NSError {
                        print("JSON decode failed: \(jsonError.localizedDescription)")
                    }
                    return
                }
                
            case .failure(_):
                print("Error")
                
            }
        })
    }
}


