//
//  ToDoCreateView.swift
//  SampleToDoApp
//
//  Created by 久富稜也 on 2021/02/18.
//

import SwiftUI

struct ToDoCreateView: View {
    
    @State var memo = ""
    
    var body: some View {
        VStack {
            VStack(spacing: 50) {
                TextField("メモを入力", text: $memo)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .frame(width: UIComponents.screenWidth / 1.2)
                
                Button(action: {
                    
                }) {
                    Text("保存")
                        .fontWeight(.bold)
                        .frame(width: UIComponents.screenWidth / 1.8, height: UIComponents.screenWidth / 7)
                        .font(.title2)
                        .foregroundColor(.white)
                        .background(Color(#colorLiteral(red: 0.01274208724, green: 0.5080561042, blue: 0.9843279719, alpha: 1)))
                        .cornerRadius(30)
                }
            }
            .navigationBarTitle("新規作成", displayMode: .inline)
        }
        .frame(minWidth: 0,
               maxWidth: .infinity,
               minHeight: 0,
               maxHeight: .infinity,
               alignment: .center)
        .background(Color(#colorLiteral(red: 0.7494265437, green: 0.9550910592, blue: 0.6752108932, alpha: 1)))
        .edgesIgnoringSafeArea(.all)
    }
}

struct ToDoCreateView_Previews: PreviewProvider {
    static var previews: some View {
        ToDoCreateView()
    }
}
