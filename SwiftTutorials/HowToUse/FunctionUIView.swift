//
//  FunctionUIView.swift
//  SwiftTutorials
//
//  Created by M K on 2021/07/14.
//

import SwiftUI

/* NOTE:
 * 基本的な関数の呼び出し、利用方法
 */

struct FunctionUIView: View {
    
    var body: some View {
        VStack{
            Button(action: {
                print("ボタンがタップされました")
            }) {
                Image(systemName: "star.fill")
                Text("tap me")
                    .font(.largeTitle)
            }
        }.onAppear(){
            //View が表示された時に呼ばれる
            print("Call onAppear")
            
            self.createView()
        }.onDisappear(){
            //View が非表示になった時に呼ばれる
            print("Call onDisappear")
            
            self.closeView()
        }
    }
    
    
    func createView(){
        print("Call createView")
    }
    
    func closeView(){
        print("Call closeView")
    }
    
}

struct FunctionUIView_Previews: PreviewProvider {
    static var previews: some View {
        FunctionUIView()
    }
}
