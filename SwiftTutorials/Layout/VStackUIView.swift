//
//  VStackUIView.swift
//  SampleApp
//
//  Created by M K on 2021/05/28.
//

import SwiftUI

/* NOTE:
 * レイアウト方法（VStack）
 * VStack｛｝で囲むことで、垂直方向に並べることができます
 *
 * Spacer()
 * スペースを配置します
 * サイズは自動で均等に保たれます
 *
 */

struct VStackUIView: View {
    var body: some View {
        VStack{
            Spacer()
            Text("垂直方向に並べます")
            Spacer()
            Text("垂直方向に並べます")
            Text("垂直方向に並べます")
            Spacer()
        }
    }
}

struct VStackUIView_Previews: PreviewProvider {
    static var previews: some View {
        VStackUIView()
    }
}
