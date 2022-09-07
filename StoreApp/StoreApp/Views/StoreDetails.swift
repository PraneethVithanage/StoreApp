//
//  StoreDetails.swift
//  StoreApp (iOS)
//
//  Created by MacBook on 2022-09-07.
//

import SwiftUI

struct  StoreDetails: View {
    var storeData : StoreElement?
    
    var body: some View {
        VStack {
            
            Image(systemName: "planet").data(url: URL(string: (storeData?.image != "" ? storeData!.image : "https://rb.gy/pp18lh" ))!)
                .resizable()
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.white, lineWidth: 4))
                .shadow(radius: 10)
                .frame(width: 250, height:250, alignment: .center)
                .padding(10)
            
            VStack (alignment:.center){
                
                VStack (alignment:.center){
                    Text(" Store Name")
                        .font(.subheadline)
                        .foregroundColor(Theme.secondry.color)
                    Text(storeData?.name ?? "")
                        .multilineTextAlignment(.center)
                        .font(.title)
                }.padding(20)
                
                VStack (alignment:.center){
                    Text(" Store Description")
                        .font(.subheadline)
                        .foregroundColor(Theme.secondry.color)
                    Text(storeData?.storeDescription ?? "")
                        .multilineTextAlignment(.center)
                        .font(.subheadline)
                }.padding(20)
                
                VStack (alignment:.center){
                    Text(" Store distance")
                        .font(.subheadline)
                        .foregroundColor(Theme.secondry.color)
                    Text(storeData?.distance ?? "")
                        .font(.subheadline)
                }.padding(20)
                
            }
            .padding()
            
            Spacer()
        }
    }
}


