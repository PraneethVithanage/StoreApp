//
//  MIError.swift
//  StoreApp (iOS)
//
//  Created by MacBook on 2022-09-07.
//

import Foundation

public struct MIError: Error {
    var status: Int?
    var title: String?
    var message: String
}
