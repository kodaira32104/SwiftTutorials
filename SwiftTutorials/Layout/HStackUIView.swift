//
//  HStackUIView.swift
//  SampleApp
//
//  Created by M K on 2021/05/28.
//

import SwiftUI

/* NOTE:
 * レイアウト方法（HStack）
 * HStack｛｝で囲むことで、水平方向に並べることができます
 *
 * Spacer()
 * スペースを配置します
 * .frame でサイズを指定することも可能です
 */

struct HStackUIView: View {
    var body: some View {
        HStack{
            Spacer().frame(width: 30, height: 30, alignment: .center)
            VStack{
                Text("水平方向に並べます")
                Text("水平方向に並べます")
            }
            Spacer().frame(width: 10, height: 30, alignment: .center)
        }
    }
}

struct HStackUIView_Previews: PreviewProvider {
    static var previews: some View {
        HStackUIView()
    }
}
