//
//  VariableUIView.swift
//  SwiftTutorials
//
//  Created by M K on 2021/07/14.
//

import SwiftUI

/* NOTE:
 * 変数の宣言、利用方法
 */


struct VariableUIView: View {
    
    let hoge:String = "再代入できない（const）"
    var piyo:String = "再代入できる"
    
    let array:[Int] = []//空配列
    let numbers:[Int] = [1,2,3,4,5]
    
    //初期化
    init(piyo:String){
        self.piyo = "再代入しました！"
        //self.hoge = "代入できない＞＜"//エラーになる
    }
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct VariableUIView_Previews: PreviewProvider {
    static var previews: some View {
        VariableUIView(piyo:"piyo")
    }
}
