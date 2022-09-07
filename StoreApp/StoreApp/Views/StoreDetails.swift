//
//  StoreDetails.swift
//  StoreApp (iOS)
//
//  Created by MacBook on 2022-09-07.
//

import SwiftUI

struct  StoreDetails: View {
    var planets: ResultData
    
    var body: some View {
        VStack {
            Image(systemName: "planet").data(url: URL(string: "https://picsum.photos/id/" + "\(planets.rotationPeriod)" + "/200/300")!)
                .resizable()
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.white, lineWidth: 4))
                .shadow(radius: 10)
                .frame(width: 250, height:250, alignment: .center)
                .padding(10)
            
            VStack (alignment:.center){
                
                VStack (alignment:.center){
                    Text(" Planet Name")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                    Text(planets.name)
                        .font(.title)
                }.padding(20)
                
                VStack (alignment:.center){
                    Text(" Planet Orbital Period")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                    Text(planets.orbitalPeriod)
                        .font(.subheadline)
                }.padding(20)
                
                VStack (alignment:.center){
                    Text("Planet Gravity")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                    Text(planets.gravity)
                        .font(.subheadline)
                }.padding(20)
                
            }
            .padding()
            
            Spacer()
        }
    }
}


