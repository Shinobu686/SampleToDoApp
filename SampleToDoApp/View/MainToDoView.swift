//
//  MainToDoView.swift
//  SampleToDoApp
//
//  Created by 久富稜也 on 2021/02/17.
//

import SwiftUI

struct MainToDoView: View {
    
    @State var searchWord = ""
    
    init() {
        UIComponents.setupNavigationBar()
    }
    
    var body: some View {
        NavigationView {
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
                            .background(Color(#colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1)))
                            .cornerRadius(10)
                    }
                }.padding(.top, 30)
                .navigationBarTitle("やること", displayMode: .inline)
                .navigationBarItems(trailing: Button(action:{
                    
                }){
                    Text("編集")
                })
                
                VStack(alignment: .leading,spacing: 1) {
                    Text("ToDo一覧")
                        .font(.largeTitle)
                        .padding()
                    
                    ToDoListView()
                }.padding(.top)
            }
        }
    }
}

struct MainToDoView_Previews: PreviewProvider {
    static var previews: some View {
        MainToDoView()
    }
}
