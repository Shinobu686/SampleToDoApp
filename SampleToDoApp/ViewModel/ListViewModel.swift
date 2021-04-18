//
//  ItemViewModel.swift
//  SampleToDoApp
//
//  Created by 久富稜也 on 2021/04/16.
//

import Foundation

class ListViewModel: ObservableObject {
    
   @Published var items: [ItemModel] = [
    ItemModel(memo: "テストテキスト1", isCompleted: false),
    ItemModel(memo: "テストテキスト2", isCompleted: true),
    ItemModel(memo: "テストテキスト3", isCompleted: false)
]
    
    //行削除メソッド
    func deleteItem(offsets: IndexSet) {
            items.remove(atOffsets: offsets)
        }
    
    //行入れ替えメソッド
    func moveItem(from: IndexSet, to: Int) {
        items.move(fromOffsets: from, toOffset: to)
    }
    
    //メモ追加メソッド
    func addItem(title: String) {
        let newItem = ItemModel(memo: title, isCompleted: false)
        items.append(newItem)
    }
    
    
}
