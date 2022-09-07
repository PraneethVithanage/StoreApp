//
//  StoreRow.swift
//  StoreApp (iOS)
//
//  Created by MacBook on 2022-09-07.
//

import SwiftUI

struct StoreRow: View {
    var planets: ResultData
    
    var body: some View {
        VStack{
            HStack {
                Image(systemName: "planet").data(url: URL(string: "https://picsum.photos/id/" + "\(planets.rotationPeriod)" + "/200/300")!)
                    .resizable()
                    .scaledToFit()
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white, lineWidth: 1))
                    .shadow(radius: 2)
                    .frame(width: 70, height: 70)
                    
                // Use the smaple images for the planet icons.
                
                VStack (alignment:.leading){
                    Text(planets.name)
                        .fontWeight(.bold)
                        .font(.system(size: 13))
                    Text("modern implementation of the equivalent-linear ")
                        .lineLimit(nil)
                        .fixedSize(horizontal: false, vertical: true)
                        .font(.system(size: 12))
                        .foregroundColor(.gray)
                       
                }
                Spacer()
            }
            Divider()
                .frame(height: 1)
                .background(.gray.opacity(0.3))
                .padding(.leading, 50)
            HStack {
                Spacer()
                Text("2.3km")
                    .fontWeight(.bold)
                    .font(.system(size: 11))
                Spacer()
                HStack {
                    Image("right_mark")
                        .resizable()
                        .frame(width: 15, height: 15)
                        .scaledToFit()
                    Text("click & collect")
                        .fontWeight(.bold)
                        .font(.system(size: 11))
                    
                }
                Spacer()
                HStack {
                    Image("right_mark")
                        .resizable()
                        .frame(width: 15, height: 15)
                        .scaledToFit()
                    Text("Delivary")
                        .fontWeight(.bold)
                        .font(.system(size: 11))
                }
                Spacer()
            }
            
        }
        .padding(5)
       
        .contentShape(Rectangle())
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .strokeBorder(style: StrokeStyle(lineWidth: 1))
                    .foregroundColor(.gray.opacity(0.3))
                    .shadow(radius: 1)
            )
    }
}

/**
 Use  for  set image from url for imageView
*/
extension Image {
    func data(url:URL) -> Self {
        if let data = try? Data(contentsOf: url) {
            return Image(uiImage: UIImage(data: data)!)
                .resizable()
        }
        return self
            .resizable()
    }
}
