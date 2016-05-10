# TJSample

気になったことを試してみるためのプロジェクトです.

## .gitignore

### `curl` でダウンロード

Google で検索してコピペで作成するのも飽きてきた頃なので curl を使って作成するようにする.
ダウンロード元は [github/gitignore](https://github.com/github/gitignore) にします.
代表的な言語でいうと、

- `C.gitignore`
- `Swift.gitignore`
- `Objective-C.gitignore`
- `Android.gitignore`
- `Ruby.gitignore`

フレームワークもありました

- `Rails.gitignore`

Global ディレクトリには、

- `Xcode.gitignore`
- `Windows.gitignore`

言語やフレームワーク、IDE、OSなど幅広く揃ってます.
肝心の実行コマンドは、

```bash
curl -o .gitignore https://raw.githubusercontent.com/github/gitignore/master/Swift.gitignore
```

たったこれだけです.
末尾の `XXX.gitignore` を変更すれば他のでも使えます.
コマンドで一発生成ができればもっと楽なのだが頻繁にやることでもないので `curl` で問題ないと思います.

*[2016/05/10] curl 7.43.0 (x86_64-apple-darwin15.0) libcurl/7.43.0 SecureTransport zlib/1.2.5*

## Swift

### クラス名の文字列化

Objective-C でクラス名を文字列に変換するのによく利用していたのは `NSStringFromClass` ですが、 Swift だとどうも挙動が怪しい.

```swift
print(NSStringFromClass(ViewController.self))
```

**実行結果**

```bash
TJSample.ViewController
```

**なんかついてる！！！**

そういえば名前空間が暗黙的に存在するとか見た記憶があるな…

<blockquote class="twitter-tweet" data-lang="ja"><p lang="en" dir="ltr">Namespacing is implicit in swift, all classes (etc) are implicitly scoped by the module (Xcode target) they are in. no class prefixes needed</p>&mdash; Chris Lattner (@clattner_llvm) <a href="https://twitter.com/clattner_llvm/status/474730716941385729">2014年6月6日</a></blockquote>
<script async src="//platform.twitter.com/widgets.js" charset="utf-8"></script>

これのせいで余計なものが出るようになったのかな

#### 解決策

適当に Google で検索するとさらっと出てくる `String()` こいつが全てなんとかしてくれるっぽい

```swift
String(ViewController)
```

**実行結果**

```bash
ViewController
```

というわけで、 `NSStringFromClass` の利用をやめて `String()` 使いましょう

*[2016/05/10] Apple Swift version 2.2 (swiftlang-703.0.18.1 clang-703.0.29)*
