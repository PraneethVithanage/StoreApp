//
//  StoreRow.swift
//  StoreApp (iOS)
//
//  Created by MacBook on 2022-09-07.
//

import SwiftUI

struct StoreRow: View {
    var storeData : StoreElement?
    
    var body: some View {
        VStack{
            HStack {
                Image(systemName: "planet").data(url: URL(string: (storeData?.image != "" ? storeData!.image : "https://rb.gy/pp18lh" ))!)
                    .resizable()
                    .frame(width: 50, height: 50)
                    .scaledToFit()
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white, lineWidth: 1))
                    .shadow(radius: 2)
                    .padding(10)
                
                VStack (alignment:.leading){
                    Text(storeData?.name ?? "")
                        .fontWeight(.bold)
                        .font(.system(size: 13))
                        .padding(.vertical,5)
                    Text(storeData?.storeDescription ?? "")
                        .lineLimit(nil)
                        .fixedSize(horizontal: false, vertical: true)
                        .font(.system(size: 12))
                        .foregroundColor(Theme.secondry.color)
                }
                Spacer()
            }
            Divider()
                .frame(height: 1)
                .background(Theme.secondry.color.opacity(0.3))
                .padding(.leading, 50)
            HStack {
                Spacer()
                Text(storeData?.distance ?? "")
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
                .foregroundColor(Theme.secondry.color.opacity(0.3))
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
