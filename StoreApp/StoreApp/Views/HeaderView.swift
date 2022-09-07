//
//  HeaderView.swift
//  StoreApp (iOS)
//
//  Created by MacBook on 2022-09-07.
//

import SwiftUI

struct HeaderView:View {
    
    var body: some View {
        VStack(alignment: .leading, spacing: 5){
            ZStack{
                Image("image1")
                    .resizable()
                    .scaledToFill()
                    .frame(width: UIScreen.main.bounds.size.width, alignment: .center)
                VStack{
                    HStack{
                        Spacer()
                        Image("search")
                            .resizable()
                            .scaledToFill()
                            .shadow(radius: 2)
                            .frame(width: 25, height: 25)
                        Image("cart")
                            .resizable()
                            .scaledToFill()
                            .shadow(radius: 2)
                            .frame(width: 25, height: 25)
                    } .padding(30)
                    Spacer()
                    HStack{
                        VStack(alignment: .leading){
                            Text("Points ")
                                .font(Font.custom("boombox2", size: 18))
                                .lineLimit(nil)
                                .fixedSize(horizontal: false, vertical: true)
                                .foregroundColor(.white)
                            Text("37,645")
                                .lineLimit(nil)
                                .fixedSize(horizontal: false, vertical: true)
                                .font(.system(size: 24))
                                .foregroundColor(Theme.primary.color)
                        }
                        Spacer()
                        HStack{
                            VStack(alignment: .leading){
                                Text("View")
                                    .lineLimit(nil)
                                    .fixedSize(horizontal: false, vertical: true)
                                    .font(.system(size: 12))
                                    .foregroundColor(.white)
                                Text("Stamps")
                                    .lineLimit(nil)
                                    .fixedSize(horizontal: false, vertical: true)
                                    .font(.system(size: 12))
                                    .foregroundColor(.white)
                            }
                            Image("star")
                                .resizable()
                                .scaledToFill()
                                .shadow(radius: 2)
                                .frame(width: 25, height: 25)
                        }
                    } .padding(.horizontal, 22)
                }.padding(10)
            }
            HStack{
                Text("Select your new store ")
                    .fontWeight(.bold)
                    .font(.system(size: 12))
                    .foregroundColor(Theme.primary.color)
                Spacer()
                Image("close_icon")
                    .resizable()
                    .scaledToFill()
                    .shadow(radius: 2)
                    .frame(width: 25, height: 25)
            } .padding(.horizontal, 30)
            Text("SEARCH STORE")
                .fontWeight(.bold)
                .font(.system(size: 17))
                .foregroundColor(.black)
                .padding(.leading, 30)
            
            Text("STO")
                .fontWeight(.bold)
                .font(.system(size: 25))
                .foregroundColor(Theme.secondry.color)
                .padding(.leading, 30)
            
            Divider()
                .frame(height: 3)
                .background(Theme.secondry.color.opacity(0.3))
                .padding(.horizontal, 30)
            
            Text("Other Stores")
                .lineLimit(nil)
                .fixedSize(horizontal: false, vertical: true)
                .font(.system(size: 12))
                .foregroundColor(Theme.secondry.color)
                .padding(.leading, 30)
                .padding(.vertical,5)
            
            Spacer()
        }
    }
}


