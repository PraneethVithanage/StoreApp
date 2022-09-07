//
//  HeaderView.swift
//  StoreApp (iOS)
//
//  Created by MacBook on 2022-09-07.
//

import SwiftUI

struct HeaderView:View {
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10){
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
                            Text("points ")
                                .font(Font.custom("boombox2", size: 18))
                                .lineLimit(nil)
                                .fixedSize(horizontal: false, vertical: true)
                                .foregroundColor(.white)
                            Text("37,645")
                                .lineLimit(nil)
                                .fixedSize(horizontal: false, vertical: true)
                                .font(.system(size: 24))
                                .foregroundColor(.yellow)
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
                    } .padding(.horizontal, 30)
                }.padding(10)
            }
            HStack{
                Text("Select your new store ")
                    .lineLimit(nil)
                    .fixedSize(horizontal: false, vertical: true)
                    .font(.system(size: 12))
                    .foregroundColor(.yellow)
                Spacer()
                Image("close_icon")
                    .resizable()
                    .scaledToFill()
                    .shadow(radius: 2)
                    .frame(width: 25, height: 25)
            } .padding(.horizontal, 30)
            Text("SEARCH STORE")
                .lineLimit(nil)
                .fixedSize(horizontal: false, vertical: true)
                .font(.system(size: 15))
                .foregroundColor(.black)
                .padding(.leading, 30)
            
            Text("STO")
                .lineLimit(nil)
                .fixedSize(horizontal: false, vertical: true)
                .font(.system(size: 22))
                .foregroundColor(.gray)
                .padding(.leading, 30)
            
            
            Divider()
                .frame(height: 3)
                .background(.gray.opacity(0.3))
                .padding(.horizontal, 30)
            
            Text("Other Stores")
                .lineLimit(nil)
                .fixedSize(horizontal: false, vertical: true)
                .font(.system(size: 12))
                .foregroundColor(.gray)
                .padding(.leading, 30)
                .padding(.bottom,5)
            
            Spacer()
        }
    }
}


