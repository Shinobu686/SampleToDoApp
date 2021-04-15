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
            Image(systemName: "checkmark.circle")
            Text(item.memo)
            Spacer()
        }
    }
}

struct ListRowView_Previews: PreviewProvider {
    static var previews: some View {
        ListRowView(item: ItemModel(memo: "テストテキスト", isCompleted: true))
            //細かいパーツのプレビューを見やすくする
            .previewLayout(.sizeThatFits)
    }
}
