//
//  MainToDoView.swift
//  SampleToDoApp
//
//  Created by 久富稜也 on 2021/02/17.
//

import SwiftUI

struct MainToDoView: View {
    @State var items: [ItemModel] = [
        ItemModel(memo: "テストテキスト1", isCompleted: false),
        ItemModel(memo: "テストテキスト2", isCompleted: true),
        ItemModel(memo: "テストテキスト3", isCompleted: false)
    ]
    
    @State var searchWord = ""
    @State var modalOpened = false
    
    init() {
        UIComponents.setupNavigationBar()
    }
    
    var body: some View {
        NavigationView {
            ZStack {
                VStack {
                    HStack {
                        TextField("キーワードを入力", text: $searchWord)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .frame(width: UIComponents.screenWidth / 1.4)
                        
                        Button(action:{
                            //処理
                        }) {
                            Text("検索")
                                .frame(width: UIComponents.screenWidth / 6, height: UIComponents.screenWidth / 13)
                                .foregroundColor(.white)
                                .background(Color(#colorLiteral(red: 0.01274208724, green: 0.5080561042, blue: 0.9843279719, alpha: 1)))
                                .cornerRadius(10)
                        }
                    }.padding(.top, 30)
                    .navigationBarTitle("リスト", displayMode: .inline)
                    .navigationBarItems(trailing: EditButton())
                    
                    VStack(alignment: .leading,spacing: 1) {
                        Text("ToDo一覧")
                            .font(.largeTitle)
                            .padding()
                        
                        List {
                            ForEach(items) { item in
                                ListRowView(item: item)
                            }
                            .onDelete(perform: deleteItem)
                            .onMove(perform: moveItem)
                        }.listStyle(PlainListStyle())
                    }.padding(.top)
                    
                    VStack {
                        Spacer()
                        
                        HStack {
                            
                            Spacer()
                            
                            Button(action: {
                                self.modalOpened.toggle()
                            }) {
                                Text("+")
                                    .font(.system(.largeTitle))
                                    .frame(width: UIComponents.screenWidth / 5, height: UIComponents.screenWidth / 5)
                                    .foregroundColor(Color.white)
                                    .padding(.bottom, 7)
                            }
                            .sheet(isPresented: $modalOpened) {
                                ToDoCreateView()
                            }
                            .background(Color.green)
                            .cornerRadius(70)
                            .padding()
                            .shadow(color: Color.black.opacity(0.3),
                                    radius: 3,
                                    x: 3,
                                    y: 3)
                        }
                    }
                }
            }
        }
    }
    
    //行削除メソッド
    func deleteItem(offsets: IndexSet) {
            items.remove(atOffsets: offsets)
        }
    
    //行入れ替えメソッド
    func moveItem(from: IndexSet, to: Int) {
        items.move(fromOffsets: from, toOffset: to)
    }
    
}

struct MainToDoView_Previews: PreviewProvider {
    static var previews: some View {
        MainToDoView()
    }
}
