---
Title: PhpStormで自分が使っているプラグインをまとめてみた
Category:
- エディター
Date: 2021-10-31T14:49:37+09:00
URL: https://yum3.hatenablog.jp/entry/ide/phpstorm_plugin
EditURL: https://blog.hatena.ne.jp/noikari/yum3.hatenablog.jp/atom/entry/13574176438028093188
---

今年から使い始めたInteliJ系のPhpStormですが、VS Codeほどではないですが結構プラグインがたくさんあったのでまとめようと思いました。

<!-- more -->

[:contents]

## プラグインが好き

VS Code出身の自分はプラグインが大好きです。ふと面倒だなぁ〜と感じていたことが解決する快感と生産性が上がっていくのを実感するからです。
そんな自分がVS CodeからPhpStormに乗り換えたので普段使っているプラグインを紹介がてら載せておこうと思います。

## プラグイン一覧

### ネタ系

ネタの心を忘れてしまったら終わりだと思っています。

#### [Nyan Progress Bar](https://plugins.jetbrains.com/plugin/8575-nyan-progress-bar)

PhpStormに使われるプログレスバーをNyanCatに置き換えます。かわいい。

#### [Nyan Tray](https://plugins.jetbrains.com/plugin/11286-nyan-tray)

MacのメニューバーにPhpStormのパフォーマンス状況をNyanCatで教えてくれます。~~正直いらないかも~~

### 便利系

あると便利なのでぜひとも導入したいプラグインが多いです。

#### [.​env files support](https://plugins.jetbrains.com/plugin/9525--env-files-support)

.envファイルを編集しやすくしてくれます（補完やカラーリングなど）。
地味ですが外せないプラグインの1つだと思っています。

#### [.​ignore](https://plugins.jetbrains.com/plugin/7495--ignore)

.ignoreファイルを簡単にテンプレートから選ぶことで作成ができます。
ターミナルツール等で似たようなものはありますが、PhpStormでサクッと作りたい時に便利です。

#### [CSV](https://plugins.jetbrains.com/plugin/10037-csv)

CSVファイルを見やすくします。これだけで十分です。

#### [deep-assoc-completion](https://plugins.jetbrains.com/plugin/9927-deep-assoc-completion)

PHPの連想配列に補完が効くようになります。これだけ聞くと地味そうに感じるのですが、めちゃくちゃ便利です。
自分の中でも割とベストに入るくらい便利なプラグインだと感じています。

#### [GitToolBox](https://plugins.jetbrains.com/plugin/7499-gittoolbox)

Gitを使いやすくしてくれます。自動フェッチ・ブランチ名補完・ブランチ切り替え簡略化など足回りが良くなります。

#### [Japanese Language Pack / 日本語言語パック](https://plugins.jetbrains.com/plugin/13964-japanese-language-pack------)

母国語なので安心します。細かい設定も英語から日本語になるので非常に助かります。
これがなかったらPhpStormの設定を1個1個見ようなんて思いませんでした。

#### [PHP Annotations](https://plugins.jetbrains.com/plugin/7320-php-annotations)

> Just install and be happy

どうやら入れるだけで幸せになるっぽいです。こりゃあもう入れるしかないっしょ！w

#### [Php Inspections ​(EA Extended)​](https://plugins.jetbrains.com/plugin/7622-php-inspections-ea-extended-)

Phpを書く上で、バグを引き起こすかもしれない部分に警告文を出してくれます。
PhpStanとはまた草分けが違い、if文で「この条件おかしくない？」とか「emptyでいいの？nullのがよくない？」みたいな助言をしてくれます。
インスペクションでサクッと適切な形に自動整形してくれるので便利で手放せません。

#### [Rainbow Brackets](https://plugins.jetbrains.com/plugin/10080-rainbow-brackets)

ブラケットは光らせましょう。それだけで視認性が大きく変わり、効率が違います。

#### [SonarLint](https://plugins.jetbrains.com/plugin/7973-sonarlint)

Lintしてくれます。 Php Inspections ​(EA Extended)とは別ベクトルで怒ってくれる為、2個とも入れればベテランエンジニア2人とモブプロしている気分になります。冷や汗ものですね。

#### [String Manipulation](https://plugins.jetbrains.com/plugin/2162-string-manipulation)

キャメルケースだのスネークケースだのなんだのを一発で変換してくれるプラグインです。

#### [Tabnine AI Code Completion- JS Java Python TS Rust Go PHP & More](https://plugins.jetbrains.com/plugin/12798-tabnine-ai-code-completion-js-java-python-ts-rust-go-php--more)

ちまたでは[GitHub Copilot](https://copilot.github.com/)が有名ですが、自分はあれがお節介すぎるのとタブ補完が少し使いづらくなるので苦手でした。
Tabnineはタブ補完で予測を出してくれる上に、ファイル上からも予測を行なってくれます。似たような文が続くテストコード等では大活躍で、少し癖はあるものの、効率は大幅に向上します。ぜひ利用して欲しいプラグインです。（Twitterで、Copilotを下げてTabnineを上げるツイートをすると開発者にいいねされます。）

#### [Translation](https://plugins.jetbrains.com/plugin/8579-translation)

Google翻訳を楽に行えます。
本領発揮をするのは**メソッドとかにカーソルを置いてると出てくるポップアップとかにも簡単に翻訳を掛けられることです。**
ライブラリのコメントは英語で書かれていることが多いので、重宝します。

### 操作系

#### [IdeaVim](https://plugins.jetbrains.com/plugin/164-ideavim)

PhpStormの操作をvim配列にします。
vimを使わない人には必要ないですが、vimを使う人には命よりも大切なプラグインになります。

#### [IdeaVim-EasyMotion](https://plugins.jetbrains.com/plugin/13360-ideavim-easymotion)

EasyMotionを使用できるようにします。後述のAceJumpをラップしてるだけっぽいので、AceJumpのキーコンフィグを変更して、大人しくAceJumpを使ってもいいかもしれません。

#### [AceJump](https://plugins.jetbrains.com/plugin/7086-acejump)

vimで言うようなeasy-motion, VS Codeだとjumpyみたいな動作を提供してくれます。

#### [Key Promoter X](https://plugins.jetbrains.com/plugin/9792-key-promoter-x)

ショートカットキーがあるのにGUI操作すると怒ってくるお母さん系プラグインです。
たしかに「ほーん」とはなるのですが、無視してGUI操作することがあります。癖って怖いですね。

### 連携系

サードパーティと連携して効果を発揮します。

#### [Activity Watcher](https://plugins.jetbrains.com/plugin/11361-activity-watcher)

Toggl Trackのようなトラッキングソフトの自動版である[ActivityWatch](https://activitywatch.net/)の拡張機能です。
詳しくは[Time Trackingツール（Toggl, RescueTime, ActivityWatch）で生産性を可視化する](https://qiita.com/take_3/items/346fb34b84e4bf1a4275)をみていただけると幸いです。
プラグインの紹介としては、Activity Watchの機能として何を何時間していたかを追跡できるのですが、PhpStrom内でどのファイルを何時間編集していたとかが記録されるようになります。

### テーマ系

#### [Atom Material Icons](https://plugins.jetbrains.com/plugin/10044-atom-material-icons)

デフォルトのアイコンは見づらく視認性が悪いです。なのでこのAtom Material Iconsを入れて瞬時に判断しやすくします。
アイコンの見やすさは個人的に重要なのでマストです。

#### [Iceberg](https://plugins.jetbrains.com/plugin/15126-iceberg)

個人的にカラーテーマはIcebergが見やすいと思っているのでIcebergで統一しています。シンプルに目に優しくて見やすいです。

#### [The Doki Theme](https://plugins.jetbrains.com/plugin/10804-the-doki-theme)

IceBergかこっちがテーマの筆頭となります。最近はゆるキャンのキャラが追加されたとか。
ちなみに[テスト実行時やビルド時にアニメワンカットシーンが流れるイカれたプラグイン](https://plugins.jetbrains.com/plugin/15865-anime-memes)も出てます。~~一時期入れてみましたがうるさくてうざいです~~
にしても海外のアニメオタクの情熱はすごいですね・・・。

### Laravel系

Laravelを書く際に便利な拡張機能です。

#### [Collector](https://plugins.jetbrains.com/plugin/15246-collector)

Laravelの組み込みである`collection`を便利に使えるようになります。

#### [Laravel Idea](https://plugins.jetbrains.com/plugin/13441-laravel-idea)

サブスクリプションが必要なプラグインになるのでオススメしづらいですが、RequestのRulesで補完が効くようになったり、簡単にartisanを使わなくてもファイル作成ができ便利です。
他にも機能はありますが詳しくは[こっち](https://laravel-idea.com/docs/overview)を見た方が早いです。

#### [Laravel Query](https://plugins.jetbrains.com/plugin/16309-laravel-query)

Laravelでのクエリ部分を補完してくれます。これがめちゃくちゃ便利で、正直これなしでは生きていけません・・・。

## まとめ

PhpStormのデフォルト機能が結構豊富なため、VS Codeほど数はないですがあるかないかでは雲泥の差だと思います。
ぜひ自分にあったプラグインを見つけてください。
