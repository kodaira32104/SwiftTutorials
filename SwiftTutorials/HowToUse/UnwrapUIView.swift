//
//  UnwrapUIView.swift
//  SwiftTutorials
//
//  Created by M K on 2021/07/14.
//

import SwiftUI

/* NOTE:
 * nil(NULL)の扱い方について
 */

struct UnwrapUIView: View {
    
    /* Swift では、基本的に nil は扱えないということになっています。
     * ただ、それでは困るので、オプショナル変数にすることで nil を扱えるようになります。
     */
    
    //var value:String = nil //Error となる
    var optionalValue:String? = nil //Error にはならない
    
    var body: some View {
        VStack{
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        }
        .onAppear(){
            unwrap_1()
//            unwrap_2()
//            unwrap_3()
//            unwrap_4()
        }
    }
    
    func unwrap_1() {
        //(1)強制アンラップ
        //オプショナル型変数の中にどんな値が入っていてもアンラップをするという方法
        //値にnil が含まれると落ちるため非推奨
        //絶対にnilではないことが分かっている場面で一時的な確認などで使われる
        
        
        //let optional_1:String? = nil
        //let unwrap_1:String = optional_1! //<-nilなので、ここで落ちる
        //print(unwrap_1)
        
        let optional_2:String? = "hoge"
        let unwrap_2:String = optional_2! //<-値があるので、落ちない
        print(unwrap_2)
        
    }
    
    func unwrap_2() {
        //(2)guard let
        //値を確認して、nil なら処理を抜けるというもの
        //一番よく使われる、一般的なアンラップ方法
        
        let optional_3:String? = "nilではありません"
        
        guard let unwrap_3 = optional_3 else {
            return print("nil")
        }
        print(unwrap_3)
        //optional_3がnil なら文字列 nil と表示して、返す
        //nil でないなら、ブロック内で有効な unwrap_3 に値を代入
    }
    
    func unwrap_3() {
        //(3)if文
        //値を確認して、処理を分岐する
        
        let optional_4:String? = nil//"nilではありません"
        if let unwrap_4:String = optional_4 {
            print("strがnilでない処理",unwrap_4)
        } else {
            print("strがnilの時の処理")
        }
        
    }
    
    func unwrap_4() {
        //(4)結合演算子 (Nil Coalescing)
        //Swiftオリジナルのオペレーターだが、たまに書いてあるコードを見かける
        
        let optional_5:String? = nil
        let unwrap_5:String = optional_5 ?? "nilではありません"
        print(unwrap_5)
        
    }
 
}

struct UnwrapUIView_Previews: PreviewProvider {
    static var previews: some View {
        UnwrapUIView()
    }
}
