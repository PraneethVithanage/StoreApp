//
//  StoreViewModel.swift
//  StoreApp (iOS)
//
//  Created by MacBook on 2022-09-07.
//

import SwiftUI

class StoreViewModel : ObservableObject {
    @Published var storeDataLists : [StoreElement]?
    
    init() {
        getStoreData()
    }
    
    func getStoreData() {
        URLSession.fetch(request: URLRequest.getFormStore(), completion: { resp in
            switch resp {
            case .success(let result):
                
                if let data = result.data(using: .utf8){
                    do {
                        let decodedResponse = try JSONDecoder().decode(Store.self, from: data)
                        DispatchQueue.main.async {
                            self.storeDataLists = decodedResponse.record.stores
                            
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


