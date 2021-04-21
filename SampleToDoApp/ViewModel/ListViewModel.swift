//
//  ItemViewModel.swift
//  SampleToDoApp
//
//  Created by 久富稜也 on 2021/04/16.
//

import Foundation

class ListViewModel: ObservableObject {
    
    @Published var items: [ItemModel] = []
    
    let itemsKey = "items"
    
    init() {
        getItems()
    }
    
    // 保存したJSONを取得しItemModelのオブジェクトに変換する
    func getItems() {
        guard
            let data = UserDefaults.standard.data(forKey: itemsKey),
            let savedItems = try? JSONDecoder().decode([ItemModel].self, from: data)
        else { return }
        self.items = savedItems
    }
    
    //行削除メソッド
    func deleteItem(offsets: IndexSet) {
        items.remove(atOffsets: offsets)
        saveItems()
    }
    
    //行入れ替えメソッド
    func moveItem(from: IndexSet, to: Int) {
        items.move(fromOffsets: from, toOffset: to)
        saveItems()
    }
    
    //メモ追加メソッド
    func addItem(memo: String) {
        let newItem = ItemModel(memo: memo, isCompleted: false)
        items.append(newItem)
        saveItems()
    }
    
    // 配列itemsを検索して一致するインデックス番号を探す
    func updateItem(item: ItemModel) {
        if let index = items.firstIndex(where: { $0.id == item.id }) {
            items[index] = ItemModel(id:item.id ,memo: item.memo, isCompleted: !item.isCompleted)
            saveItems()
        }
    }
    
    // ItemModelのオブジェクトをJSONに変換して保存する
    func saveItems() {
        if let encodedData = try? JSONEncoder().encode(items) {
            UserDefaults.standard.set(encodedData, forKey: itemsKey)
        }
    }
    
}
