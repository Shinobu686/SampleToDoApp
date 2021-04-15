//
//  ToDoListView.swift
//  SampleToDoApp
//
//  Created by 久富稜也 on 2021/02/17.
//

import SwiftUI

struct ListRowView: View {
    
    let item: ItemModel
    
    var body: some View {
        
        HStack {
            Image(systemName: item.isCompleted ? "checkmark.circle" : "circle")
                .foregroundColor(item.isCompleted ? Color.green : Color.red)
            Text(item.memo)
            Spacer()
        }
    }
}

struct ListRowView_Previews: PreviewProvider {
    static var previews: some View {
        //Viewを二つ並べて比較する
        Group {
            ListRowView(item: ItemModel(memo: "テストテキスト", isCompleted: true))
            ListRowView(item: ItemModel(memo: "テストテキスト", isCompleted: false))
        } //細かいパーツのプレビューを見やすくする
        .previewLayout(.sizeThatFits)
           
    }
}
