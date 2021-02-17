//
//  ToDoListView.swift
//  SampleToDoApp
//
//  Created by 久富稜也 on 2021/02/17.
//

import SwiftUI

struct ToDoListView: View {
    
    var memo = ["犬の散歩","買出し","履歴書の作成","プログラミング"]
    
    var body: some View {
        List {
            ForEach(0 ..< memo.count) { index in
                Text(self.memo[index])
            }
        }.listStyle(PlainListStyle())
    }
}

struct ToDoListView_Previews: PreviewProvider {
    static var previews: some View {
        ToDoListView()
    }
}
