//
//  MainToDoView.swift
//  SampleToDoApp
//
//  Created by 久富稜也 on 2021/02/17.
//

import SwiftUI

struct MainToDoView: View {
    
    @State var searchWord = ""
    @State var flag = false
    
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
                    
                    VStack {
                        Spacer()
                        
                        HStack {
                            
                            Spacer()
                            
                            NavigationLink(destination: ToDoCreateView(), isActive: $flag) {
                                EmptyView()
                            }
                            
                            Button(action: {
                                self.flag = true
                            }) {
                                Text("+")
                                    .font(.system(.largeTitle))
                                    .frame(width: UIComponents.screenWidth / 5, height: UIComponents.screenWidth / 5)
                                    .foregroundColor(Color.white)
                                    .padding(.bottom, 7)
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
}

struct MainToDoView_Previews: PreviewProvider {
    static var previews: some View {
        MainToDoView()
    }
}
