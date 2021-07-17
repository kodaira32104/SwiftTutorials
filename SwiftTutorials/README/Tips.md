# Tips

Xcode,SwiftUI に関連する情報を記載。
主に、小技,対処法,テクニックなど。



### Canvas
SwiftUIのViewを表示する
ツールバーから、Editor>Canvas のチェックで、表示 or 非表示を切り替えできる

Canvas を表示させている部分は下記のコード
Canvasを表示させるためなので、不要なら消してOK

```swift:PreviewProvider

struct HStackUIView_Previews: PreviewProvider {
    static var previews: some View {
        HStackUIView()
    }
}
```


### シミュレーターへのファイル追加方法
シミュレーターへの画像や動画の追加は下記の手順で実施します

①シミュレーターで一度アプリを立ち上げる
②起動したらシミュレーターのホームボタンでアプリを閉じる
※シミュレーターの停止ではない
③フォト アプリを開く
④写真とか並んでるところに、入れたい動画[写真]をドラッグ＆ドロップで入れる



