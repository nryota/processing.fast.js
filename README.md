# processing.fast.js

processing.js-1.4.1 + n_ryota's hack v0.5.0
a port of the Processing visualization language

Processing.js is licensed under the MIT License, see LICENSE.
For a list of copyright holders, please refer to AUTHORS.

http://processingjs.org

n_ryota's hack
* fast tint(255, 0-255), tint() cache.
* add blendMode()
* add orientation(AUTO or LANDSCAPE or PORTRATE) for iOS, Android
* add fullScreen() == orientation(AUTO)

http://dev.eyln.com

## 概要

processing.jsのtint()を高速化して、その他一部関数のサポートを追加したものです。

fastといっても他のライブラリより速いとかそういうことではなく、もともとのprocessing.js本体とくらべて高速化、という意味です。

processing.jsの最新版だとモバイル端末でのタッチの挙動がおかしかったので、1.4.1から派生しています。

blendMode(ADD)で加算描画したりできます。

PC用にsize()指定後、iOS/Android端末でorientatiation(LANDSCAPE)にすると横持ち想定のキャンバス、orientation(PORTRATE)にすると縦持ち想定のキャンバスを作れます。smartTempleateのhtmlと組み合わせて使いますが、先に端末の向きをあわせておく必要があります。ちなみにorientation(AUTO)にすると現在の向きにあわせてフルスクリーンになります。

## JavaScriptモードの追加方法

Processing 3に手動でJavaScriptモードを追加する場合は下記ファイルを展開して、スケッチブックフォルダのmodeに入れてください。

https://github.com/fjenett/javascript-mode-processing/blob/master/release/JavaScriptMode.zip

その後Processingを再起動してなにか簡単なスケッチを開くと、
右側の「Java」のボタンで「JavaScript」が選べるようになっています。

## 各テンプレートの違い

normalTemplate_js ... processing.js-1.4.1をそのまま使う、もともとのテンプレートです。

fastTemplate_js ... processing.fast.jsを使うテンプレートです。

smartTemplate_js ... こちらもprocessing.fast.jsを使うテンプレートで、iOS/Androidのスマートフォン向けのものです。

## License

Processing.js is licensed under the MIT License, see LICENSE.
For a list of copyright holders, please refer to AUTHORS.

#### processing.fast.js

Copyright &copy; 2016 NISHIDA Ryota [http://dev.eyln.com][EYLN]
Distributed under the [MIT License][MIT].

[EYLN]: http://dev.eyln.com/
[MIT]: http://opensource.org/licenses/mit
