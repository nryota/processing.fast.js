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

## JavaScriptモードの追加方法

Processing 3に手動でJavaScriptモードを追加する場合は下記ファイルを展開して、スケッチブックフォルダのmodeに入れてください。

https://github.com/fjenett/javascript-mode-processing/blob/master/release/JavaScriptMode.zip

## 各テンプレートの違い

normalTemplate_js ... processing.js-1.4.1をそのまま使う、もともとのテンプレートです。

fastTemplate_js ... processing.fast.jsを使うテンプレートです。

smartTemplate_js ... こちらもprocessing.fast.jsを使うテンプレートで、iOS/Androidのスマートフォン向けのものです。
