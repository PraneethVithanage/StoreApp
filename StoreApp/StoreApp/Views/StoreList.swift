//
//  StoreList.swift
//  StoreApp (iOS)
//
//  Created by MacBook on 2022-09-07.
//


import SwiftUI
import Combine

struct StoreList: View {
    @ObservedObject var viewModel = StoreViewModel()
    @State var isLoarding: Bool = false
    
    init() {
        UITableView.appearance().separatorStyle = .none
        UITableViewCell.appearance().backgroundColor = .white
        UITableView.appearance().backgroundColor = .white
        UITableView.appearance().contentInset.top = -35
    }
    
    var body: some View {
        LoadingView(isShowing: .constant(viewModel.storeDataLists == nil)) {
            NavigationView {
                VStack(spacing: 0){
                    HeaderView()
                        .edgesIgnoringSafeArea(.all)
                        .frame(width: UIScreen.main.bounds.size.width,height: 225, alignment: .center)
                    List {
                        ForEach(viewModel.storeDataLists ?? [], id: \.id) { result in
                            ZStack {
                                StoreRow(storeData: result)
                                    .buttonStyle(PlainButtonStyle())
                                
                                NavigationLink(destination: StoreDetails(storeData: result)) {
                                    EmptyView()
                                }.buttonStyle(PlainButtonStyle()).opacity(0)
                            }
                        }.listRowSeparator(.hidden)
                    }.padding(.bottom, 20)
                }
            }
        }
    }
}

struct PlanetList_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["car", "bus"], id: \.self) { deviceName in
            StoreList()
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
        }
    }
}
