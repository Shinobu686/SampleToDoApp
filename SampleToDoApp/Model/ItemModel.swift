//
//  ItemModel.swift
//  SampleToDoApp
//
//  Created by 久富稜也 on 2021/04/15.
//

import Foundation

struct ItemModel: Identifiable {
    var id: String = UUID().uuidString
    var memo: String
    var isCompleted: Bool
}
