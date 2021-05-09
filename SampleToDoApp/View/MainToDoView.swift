//
//  MainToDoView.swift
//  SampleToDoApp
//
//  Created by 久富稜也 on 2021/02/17.
//

import SwiftUI

struct MainToDoView: View {
    
    @State var searchText = ""
    @State var modalOpened = false
    @State var flag = false
    
    init() {
        UIComponents.setupNavigationBar()
    }
    
    var body: some View {
        NavigationView {
            ZStack {
                VStack {
                    
                    SearchBar(text: $searchText, placeholder: "検索ワード")
                        .padding()
                    
                    Divider()
                    
                    
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
                .navigationBarTitle("リスト", displayMode: .inline)
                .navigationBarItems(trailing: EditButton())
            }
        }
    }
}


struct MainToDoView_Previews: PreviewProvider {
    static var previews: some View {
        MainToDoView()
            .environmentObject(ListViewModel())
    }
}
