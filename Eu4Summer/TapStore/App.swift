//
//  App.swift
//  TapStore
//
//  Created by Paul Hudson on 01/10/2019.
//  Copyright © 2019 Hacking with Swift. All rights reserved.
//

import Foundation

struct App: Decodable, Hashable {
    let id: Int
    let category: String
    let name: String
    let description: String
    let image: String
//    let iap: Bool
//    let place: String
}