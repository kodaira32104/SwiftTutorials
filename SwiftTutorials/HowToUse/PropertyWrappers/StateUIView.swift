//
//  StateUIView.swift
//  SwiftTutorials
//
//  Created by M K on 2021/07/15.
//

import SwiftUI

/* NOTE:
 * Swiftのアノテーションのひとつ
 * 特定のView内で値が変わるデータに使用する
 */

struct StateUIView: View {
    
    //@State:SwiftUIが管理しているメモリに値を格納する
    
    @State var isPowerOn:Bool = false    // 電源の状態を保持するプロパティ
    @State var text:String = "初期値です"
    
    var body: some View {
        VStack {
            Group{
                /// 電源ボタン
                Button(action: {
                    self.isPowerOn.toggle()     // isPowerOnの値を反転
                }) {
                    Image(systemName: "power")  // 電源ボタンの画像
                }
                /// 電源状態表示
                Text(isPowerOn ? "電源ON" : "電源OFF")
            }
            Spacer().frame(width: 100, height: 100, alignment: .center)
            Group{
                //$（Binding）で双方向でのデータ共有が可能
                TextField("プレースホルダー", text: self.$text)
                    .textFieldStyle(RoundedBorderTextFieldStyle())  // 入力域のまわりを枠で囲む
                    .padding()  // 余白を追加
            }
        }
        .font(.largeTitle)
    }
    
}

struct StateUIView_Previews: PreviewProvider {
    static var previews: some View {
        StateUIView()
    }
}
