//
//  ZStackUIView.swift
//  SampleApp
//
//  Created by M K on 2021/05/28.
//

import SwiftUI

/* NOTE:
 * Image(画像)の使い方
 * Assetsに保存された写真を表示しています
 */

struct ZStackUIView: View {
    var body: some View {
        ZStack{
            Rectangle()
                .fill(Color.blue)// 図形の塗りつぶしに使うViewを指定
                .frame(width:300, height: 300) //フレームサイズ指定
            Rectangle()
                .fill(Color.yellow)
                .frame(width:200, height: 200)
            Rectangle()
                .fill(Color.red)
                .frame(width:100, height: 100)
        }
    }
}

struct ZStackUIView_Previews: PreviewProvider {
    static var previews: some View {
        ZStackUIView()
    }
}
