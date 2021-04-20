//
//  ToDoListView.swift
//  SampleToDoApp
//
//  Created by 久富稜也 on 2021/04/16.
//

import SwiftUI

struct ToDoListView: View {
    
    @EnvironmentObject var ListVM: ListViewModel
    
    var body: some View {
        
        List {
            ForEach(ListVM.items) { item in
                ListRowView(item: item)
                    .onTapGesture {
                        withAnimation(.linear) {
                            ListVM.updateItem(item: item)
                        }
                    }
            }
            .onDelete(perform: ListVM.deleteItem)
            .onMove(perform: ListVM.moveItem)
        }.listStyle(PlainListStyle())
    }
}

struct ToDoListView_Previews: PreviewProvider {
    static var previews: some View {
        ToDoListView()
            .environmentObject(ListViewModel())
    }
}
