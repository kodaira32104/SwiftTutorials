//
//  ImageUIView.swift
//  SampleApp
//
//  Created by M K on 2021/05/28.
//

import SwiftUI

/* NOTE:
 * Image(画像)の使い方
 * Assetsに保存された写真を表示しています
 */

struct ImageUIView: View {
    var body: some View {
        Image("dog")
            .resizable()//画像サイズをフレームサイズに合わせる
            .frame(width: 300, height: 300)// フレームサイズの指定
            .border(Color.red, width: 2) // フレームに枠線をつけて可視化
    }
}

struct ImageUIView_Previews: PreviewProvider {
    static var previews: some View {
        ImageUIView()
    }
}
