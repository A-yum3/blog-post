---
Title: Macの初期ターミナルを卒業してiTerm2で快適に過ごす
Category:
- ターミナル
Date: 2021-10-30T00:10:19+09:00
URL: https://yum3.hatenablog.jp/entry/hack/iterm2_customize
EditURL: https://blog.hatena.ne.jp/noikari/yum3.hatenablog.jp/atom/entry/13574176438027611226
---

ターミナルってよく使うし便利にしたいって思った時が卒業のしどきなので、ささっとiTerm2入れてカスタムしましょ。

<!-- more -->

[:contents]

## はじめに

みなさん、ターミナルカスタマイズしてますか？自分も昔はデフォルトで使っているだけの人間だったのですが、今はある程度カスタマイズをしています。

でも、ターミナルってそもそもカスタマイズできるの？どうやってカスタマイズすればいいの？どの方向にカスタマイズすればいいの？という人向けに、0から完全に導入できるまで説明をします。

## 参考

残念ながらシロモは付属してくれません。独自で導入してください

![https://i.gyazo.com/658516ed2a1946ca9b1748dcd3e03017.gif](https://i.gyazo.com/658516ed2a1946ca9b1748dcd3e03017.gif)

## 読むと何ができるか

- ディレクトリ移動が楽になる
- **補完があるので間違いが減る**
- **優しいターミナルになる**
- あの「l」から始まるコマンドなんだっけ・・・がなくなる
- 普通に楽

## 対象者

- **プログラミングを最近始め、CLIに触れ始めた人**
- **普段からCLIをよく使うが、コマンド等々忘れがちな人**
- シェルスクリプトとか良くわからないけどオシャレなCLIにしたい人
- zshを使うのに抵抗がない人
- Mac使用者

## 記事でやること

### 手順内容

- Homebrewの導入
- Homebrew CaskでのiTerm2導入
- iTerm2の基本設定
- zinitの導入
- zshのテーマ導入
- zinitを通したプラグインの導入

# 手順

基本的な所から説明します。随時スキップしてください

## Homebrewの導入

### Homebrewとは

[Homebrew](https://brew.sh/index_ja)

> 最近ではOSや言語毎にパッケージマネージャとよばれるツールが提供され、ソフトウエアや拡張機能のインストールはパッケージマネージャを利用して行うことが一般的になってきています。HomebrewはMacOS環境におけるいわゆるデファクトスタンダードなパッケージマネージャです。
>
> 引用元:[Homebrewのインストール - Qiita](https://qiita.com/zaburo/items/29fe23c1ceb6056109fd)

基本的にプログラミング言語のインストールやデータベースのインストールなどのパッケージはすべてHomebrewを通して行うことが多いです。

Homebrewを使えば自動で依存関係やらPathやらを通してくれることもあるので非常に使いやすいパッケージマネージャーとなっています。アップデートもしてくれるので便利😎

### Homebrewインストール

ターミナルを開き、以下のコマンドを叩けばインストールができます。

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

詰まってしまった方は以下の詳しいインストール方法を参照してください。

[Homebrewのインストール - Qiita](https://qiita.com/zaburo/items/29fe23c1ceb6056109fd)

## iTerm2導入

### iTerm2とは

初期から入っているターミナルの代替品です。

ターミナルよりカスタマイズの幅が広く、**透過させたり、背景画像を付けられたり、ショートカットキーで便利に操作ができたり**、今のところこれを使っておけば問題なし！って感じです。

[iTerm2 - macOS Terminal Replacement](https://iterm2.com/)

### iTerm2インストール

先ほど入れたHomebrewを使ってインストールしてみましょう！

```bash
brew install iterm2 --cask
```

を実行してください。ちなみに**cask**というのはGUIアプリ等々をHomebrewで入れる時に使用するコマンドです。

### iTerm2設定

無事、インストールできましたか？
iTerm2の設定ですが、ここでは

- HotKeyの設定
- 起動サイズ
- 背景透過

の設定を行なっていきます。

まずHotKeyの設定ですが、HotKeyとはショートカットキーみたいなもので、決められたキーを押すとiTerm2がﾆｭｯっと出てくる設定のことです。

### iTerm2 HotKey設定

iTerm2を開く
↓
左上のiTermメニューから

**Preferences**

を開く

![https://qiita-image-store.s3.ap-northeast-1.amazonaws.com/0/239325/84096fe1-1204-3d50-85cd-81948877e33c.png](https://qiita-image-store.s3.ap-northeast-1.amazonaws.com/0/239325/84096fe1-1204-3d50-85cd-81948877e33c.png)

↓
ウィンドウのタブから

**Keys**

を選択

![https://qiita-image-store.s3.ap-northeast-1.amazonaws.com/0/239325/63b5b859-0817-c6db-3fec-e3b1f37026fa.png](https://qiita-image-store.s3.ap-northeast-1.amazonaws.com/0/239325/63b5b859-0817-c6db-3fec-e3b1f37026fa.png)

↓
内側のタブでHotKeyを選択

![https://qiita-image-store.s3.ap-northeast-1.amazonaws.com/0/239325/537c4ba1-e338-7636-2c76-458570d672f7.png](https://qiita-image-store.s3.ap-northeast-1.amazonaws.com/0/239325/537c4ba1-e338-7636-2c76-458570d672f7.png)

↓
Create a Dedicated Hotkey

![https://qiita-image-store.s3.ap-northeast-1.amazonaws.com/0/239325/6e47a33f-6b27-f082-a86a-7afc5470fdc6.png](https://qiita-image-store.s3.ap-northeast-1.amazonaws.com/0/239325/6e47a33f-6b27-f082-a86a-7afc5470fdc6.png)

↓
HotKeyに自分が設定したいHotKeyをレコーディング（自分はCMD + i）

![https://qiita-image-store.s3.ap-northeast-1.amazonaws.com/0/239325/6c0b49a0-ae75-8317-e5dd-9e1a349a70bd.png](https://qiita-image-store.s3.ap-northeast-1.amazonaws.com/0/239325/6c0b49a0-ae75-8317-e5dd-9e1a349a70bd.png)

↓
終わり

これでiTerm2が起動している場合はHotKeyを押せばターミナルがいつでも開くようになります。
**トグル式なので、しまうのもHotKeyを押せばいいため**、楽になります。

### iTerm2起動サイズ設定

ターミナルの大きさは人によって好き好みがありますが、結局のところ最大化させてしまった方が分割もしやすいし、見やすいしで快適になります。大人しく最大化させましょう。

iTerm2を開く
↓
左上のメニューからPreferences

![https://qiita-image-store.s3.ap-northeast-1.amazonaws.com/0/239325/84096fe1-1204-3d50-85cd-81948877e33c.png](https://qiita-image-store.s3.ap-northeast-1.amazonaws.com/0/239325/84096fe1-1204-3d50-85cd-81948877e33c.png)

↓
ウィンドウのタブからProfilesを選択し、左サイドバーのProfileNameの中からHotKey Windowを選択してください。

![_2021-07-10_23.05.11.png](https://s3.us-west-2.amazonaws.com/secure.notion-static.com/97413507-b0ce-4762-825b-ff578b9d2f8e/_2021-07-10_23.05.11.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAT73L2G45O3KS52Y5%2F20211030%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20211030T022623Z&X-Amz-Expires=86400&X-Amz-Signature=fc1495f8d1ec4951812a0e9616e2465c17217341dfdb5056e06207576e5b02b3&X-Amz-SignedHeaders=host&response-content-disposition=filename%20%3D%22_2021-07-10_23.05.11.png%22)

↓
内側のタブでWindowを選択し
中央右にあるStyleの所からMaximizedを選択する

![https://qiita-image-store.s3.ap-northeast-1.amazonaws.com/0/239325/b390712f-0ffd-0f8d-393e-6824d5970934.png](https://qiita-image-store.s3.ap-northeast-1.amazonaws.com/0/239325/b390712f-0ffd-0f8d-393e-6824d5970934.png)

↓
終わり

### iTerm2背景透過

ターミナルを全画面で開く時に「あ〜コマンド書いてるんだけど見えね〜」ってなることは避けたいです。

微妙に見えるよう透過させます。設定方法は

iTerm2を開く
↓
左上のメニューからPreferences

![https://qiita-image-store.s3.ap-northeast-1.amazonaws.com/0/239325/84096fe1-1204-3d50-85cd-81948877e33c.png](https://qiita-image-store.s3.ap-northeast-1.amazonaws.com/0/239325/84096fe1-1204-3d50-85cd-81948877e33c.png)

↓
内側のタブでWindowを選択し
上左にあるTransparencyのバーを動かしてお好みの透過度に変更する

![https://qiita-image-store.s3.ap-northeast-1.amazonaws.com/0/239325/a3a4138a-a040-3ca6-abd2-796eb5500af8.png](https://qiita-image-store.s3.ap-northeast-1.amazonaws.com/0/239325/a3a4138a-a040-3ca6-abd2-796eb5500af8.png)

↓
終わり

### iTerm2のショートカットキー

`CMD + d`で画面の横分割
`CMD + Shift + d`　で画面の縦分割
`CMD + T`　新規タブでターミナルを開く

他にも便利なコマンドはたくさんありますが、最低限ここらへんを覚えておけば便利です。

他にも細かい設定を行いたい場合は以下のリンクを見て変更にチャレンジしてみてください

[[iTerm2入門]開発効率アップの基本機能/おすすめ設定をチートシートLikeにまとめたよ](https://zenn.dev/kumamoto/articles/bb3f416e34349e9ae13f)

## zshの基本設定

[zsh(+ dotfiles)入門](https://zenn.dev/k4zu/articles/zsh-tutorial)

以上を参考にパパパッと`/.zshrc`に書き込んで行っちゃいましょう！

### なんか面倒な人はこっちをコピペしてください

```bash
#################################  HISTORY  #################################
# history
HISTFILE=$HOME/.zsh_history     # 履歴を保存するファイル
HISTSIZE=100000                 # メモリ上に保存する履歴のサイズ
SAVEHIST=1000000                # 上述のファイルに保存する履歴のサイズ

# share .zshhistory
setopt inc_append_history       # 実行時に履歴をファイルにに追加していく
setopt share_history            # 履歴を他のシェルとリアルタイム共有する

setopt hist_ignore_all_dups     # ヒストリーに重複を表示しない
setopt hist_save_no_dups        # 重複するコマンドが保存されるとき、古い方を削除する。
setopt extended_history         # コマンドのタイムスタンプをHISTFILEに記録する
setopt hist_expire_dups_first   # HISTFILEのサイズがHISTSIZEを超える場合は、最初に重複を削除します

autoload -Uz colors; colors

# Tabで選択できるように
zstyle ':completion:*:default' menu select=2

# 補完候補をそのまま→小文字を大文字→大文字を小文字に変更
zstyle ':completion:*' matcher-list '' 'm:{[:lower:]}={[:upper:]}' '+m:{[:upper:]}={[:lower:]}'

### 補完方法毎にグループ化する。
zstyle ':completion:*' format '%B%F{blue}%d%f%b'
zstyle ':completion:*' group-name ''

# ファイル補完候補に色を付ける
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}

# ディレクトリ名の補完で末尾の / を自動的に付加し、次の補完に備える
setopt auto_param_slash

# カッコを自動補完
setopt auto_param_keys

# ファイル名の展開でディレクトリにマッチした場合 末尾に / を付加
setopt mark_dirs

# 補完キー連打で順に補完候補を自動で補完
setopt auto_menu

# スペルミス訂正
setopt correct

# コマンドラインでも # 以降をコメントと見なす
setopt interactive_comments

# コマンドラインの引数で --prefix=/usr などの = 以降でも補完できる
setopt magic_equal_subst

# 語の途中でもカーソル位置で補完
setopt complete_in_word

# 日本語ファイル名を表示可能にする
setopt print_eight_bit

# ディレクトリ名だけでcdする
setopt auto_cd

# ビープ音を消す
setopt no_beep

# コマンドを途中まで入力後、historyから絞り込み
autoload -Uz history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
bindkey "^P" history-beginning-search-backward-end
bindkey "^N" history-beginning-search-forward-end
```

## zinitの導入

いよいよお待ちかねの`zinit`の導入です。

[zinitでzsh環境をいい感じにしたメモ - Qiita](https://qiita.com/crossroad0201/items/17270127732dc20fa8b2)

[【Zsh】大改造ターミナル環境【Zinit】 - Qiita](https://qiita.com/obake_fe/items/c2edf65de684f026c59c)

以上の記事を参考に導入します。

### zinitとは

zshのプラグインマネージャーになります。

HomebrewはMacのパッケージマネージャーでしたが、zinitはzshのパッケージマネージャーになります。

数あるzshプラグインマネージャーの中でも起動速度が爆速で、oh-my-zshと比べると**月とスッポン**くらい違います。

とりえあずは「いい感じに入れるやつ」という認識でひとまずは大丈夫です。

それでも詳しく理解したい方はこちら

[zinit をしっかりと理解する](https://zenn.dev/xeres/articles/2021-05-05-understanding-zinit-syntax)

[zdharma/zinit](https://github.com/zdharma/zinit#option-1---automatic-installation-recommended)

### zinitインストール

以下のコマンドラインを実行してください。

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/zdharma/zinit/master/doc/install.sh)"
```

`~/.zshrc`にzinitの設定が追記されるので再読み込みを行い、自動更新を有効化します。

ちなみに`.zshrc`とは`zsh`の設定ファイルです。エイリアスやPATHなどを基本的には書きます。

```bash
source ~/.zshrc
zinit self-update
```

## zshのテーマ導入

![https://raw.githubusercontent.com/romkatv/powerlevel10k-media/master/prompt-styles-high-contrast.png](https://raw.githubusercontent.com/romkatv/powerlevel10k-media/master/prompt-styles-high-contrast.png)

色々なステータスバーが出たターミナルを見たことはありませんか？それを実現する為に色々カスタマイズを行います。

```bash
~/.zshrc
```

をzinitによってカスタマイズを行なっていきます。

### 編集中の注意

`~/.zshrc`に以下の部分が追加されているので、それより下に追記します。
VS Codeが入っている人は`code ~/.zshrc`でVS codeを開けます。

```bash
### Added by Zinit's installer
  :
  略
  :
### End of Zinit's installer chunk

これ以降に設定を追記していく

```

`~/.zshrc`を編集し、iTerm2を再起動するか、`source ~/.zshrc`を実行することで自動的にセットアップを行なってくれます。

### Powerlevel10kについて

みんな大好きカラフルゴテゴテのPowerlevel10kを導入します。
まず、公式リポジトリはこちらです。

[romkatv/powerlevel10k](https://github.com/romkatv/powerlevel10k)

### zinit経由でpowerlevel10k導入

では、実際に導入してみましょう。
以下の文を実行してみてください。

```bash
echo "zinit ice depth=1; zinit light romkatv/powerlevel10k" >> ~/.zshrc
```

追記が終わったら、`source ~/.zshrc`で再読み込み、またはiTerm2を再起動します。

そうすると初期設定が対話的に聞かれるので、お好みの設定に変更しましょう。

### フォント導入

では先ほどのセクション以降に追記します

セットアップですが、専用のフォントが必要になるため、その導入から行なっていきます。
フォント自体はPowerlevel10kのセットアップ時に入れてくれるので、iTerm2の設定だけ行いましょう。

Profilesを開き、
内側のタブのTextを選択、そしてFontから

```bash
Meslo Nerd Font
```

を選択する

![https://qiita-image-store.s3.ap-northeast-1.amazonaws.com/0/239325/d2edaeef-4d57-a75a-2344-8eea3ecf1b5a.png](https://qiita-image-store.s3.ap-northeast-1.amazonaws.com/0/239325/d2edaeef-4d57-a75a-2344-8eea3ecf1b5a.png)

これだけで作業は終了します。

### powerlevel10kの細かい設定

powerlevel10kの細かい設定ですが、`~/.p10k.zsh`というファイルが自動生成されているので、それを編集してさまざまな表示形式を変えます。

`POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS` がプロンプトの右側に表示する情報を決める設定です。
有効化したいところだけコメントを外す、といった感じで簡単にON、OFF切り替えることができます。

これは自分の設定ですが、このように変更すると一番最初の参考のようになります。

```bash

  # The list of segments shown on the left. Fill it with the most important segments.
  typeset -g POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(
    # =========================[ Line #1 ]=========================
    os_icon                 # os identifier
    dir                     # current directory
    vcs                     # git status
    # =========================[ Line #2 ]=========================
    newline                 # \\n
    prompt_char           # prompt symbol
  )

  # The list of segments shown on the right. Fill it with less important segments.
  # Right prompt on the last prompt line (where you are typing your commands) gets
  # automatically hidden when the input line reaches it. Right prompt above the
  # last prompt line gets hidden if it would overlap with left prompt.
  typeset -g POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(
    # =========================[ Line #1 ]=========================
    status                  # exit code of the last command
    command_execution_time  # duration of the last command
    background_jobs         # presence of background jobs
    direnv                  # direnv status (<https://direnv.net/>)
    asdf                    # asdf version manager (<https://github.com/asdf-vm/asdf>)
    virtualenv              # python virtual environment (<https://docs.python.org/3/library/venv.html>)
    anaconda                # conda environment (<https://conda.io/>)
    pyenv                   # python environment (<https://github.com/pyenv/pyenv>)
    goenv                   # go environment (<https://github.com/syndbg/goenv>)
    nodenv                  # node.js version from nodenv (<https://github.com/nodenv/nodenv>)
    nvm                     # node.js version from nvm (<https://github.com/nvm-sh/nvm>)
    nodeenv                 # node.js environment (<https://github.com/ekalinin/nodeenv>)
    # node_version          # node.js version
    # go_version            # go version (<https://golang.org>)
    # rust_version          # rustc version (<https://www.rust-lang.org>)
    # dotnet_version        # .NET version (<https://dotnet.microsoft.com>)
    php_version           # php version (<https://www.php.net/>)
    laravel_version       # laravel php framework version (<https://laravel.com/>)
    # java_version          # java version (<https://www.java.com/>)
    # package               # name@version from package.json (<https://docs.npmjs.com/files/package.json>)
    rbenv                   # ruby version from rbenv (<https://github.com/rbenv/rbenv>)
    rvm                     # ruby version from rvm (<https://rvm.io>)
    fvm                     # flutter version management (<https://github.com/leoafarias/fvm>)
    luaenv                  # lua version from luaenv (<https://github.com/cehoffman/luaenv>)
    jenv                    # java version from jenv (<https://github.com/jenv/jenv>)
    plenv                   # perl version from plenv (<https://github.com/tokuhirom/plenv>)
    phpenv                  # php version from phpenv (<https://github.com/phpenv/phpenv>)
    scalaenv                # scala version from scalaenv (<https://github.com/scalaenv/scalaenv>)
    haskell_stack           # haskell version from stack (<https://haskellstack.org/>)
    kubecontext             # current kubernetes context (<https://kubernetes.io/>)
    terraform               # terraform workspace (<https://www.terraform.io>)
    aws                     # aws profile (<https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-profiles.html>)
    aws_eb_env              # aws elastic beanstalk environment (<https://aws.amazon.com/elasticbeanstalk/>)
    azure                   # azure account name (<https://docs.microsoft.com/en-us/cli/azure>)
    gcloud                  # google cloud cli account and project (<https://cloud.google.com/>)
    google_app_cred         # google application credentials (<https://cloud.google.com/docs/authentication/production>)
    context                 # user@hostname
    nordvpn                 # nordvpn connection status, linux only (<https://nordvpn.com/>)
    ranger                  # ranger shell (<https://github.com/ranger/ranger>)
    nnn                     # nnn shell (<https://github.com/jarun/nnn>)
    xplr                    # xplr shell (<https://github.com/sayanarijit/xplr>)
    vim_shell               # vim shell indicator (:sh)
    midnight_commander      # midnight commander shell (<https://midnight-commander.org/>)
    nix_shell               # nix shell (<https://nixos.org/nixos/nix-pills/developing-with-nix-shell.html>)
    vi_mode                 # vi mode (you don't need this if you've enabled prompt_char)
    # vpn_ip                # virtual private network indicator
    load                  # CPU load
    disk_usage            # disk usage
    ram                   # free RAM
    # swap                  # used swap
    todo                    # todo items (<https://github.com/todotxt/todo.txt-cli>)
    timewarrior             # timewarrior tracking status (<https://timewarrior.net/>)
    taskwarrior             # taskwarrior task count (<https://taskwarrior.org/>)
    time                    # current time
    # =========================[ Line #2 ]=========================
    newline
    ip                    # ip address and bandwidth usage for a specified network interface
    # public_ip             # public IP address
    # proxy                 # system-wide http/https/ftp proxy
    # battery               # internal battery
    # wifi                  # wifi speed
    # example               # example user-defined segment (see prompt_example function below)
  )
```

## zshプラグイン導入

### プラグインとは

**この記事の言いたかった部分はここです**:relaxed:プラグインの導入によって、今までの作業が段違いに楽になります。

プラグインは現在の機能に追加で機能を付け足すことで、VS Codeの拡張機能のようなものと同様です。入れ方は簡単で`zinit light (リポジトリ名)`で勝手にダウンロードしてきてくれるので、簡単にインストールができます。（例外はあります）

詳しくは先ほど同様、こちらの記事を参照すると良いでしょう。

[zinit をしっかりと理解する](https://zenn.dev/xeres/articles/2021-05-05-understanding-zinit-syntax)

基本的にコピペで導入できます。

### 【⭐️⭐️⭐️】補完機能【必須】

プレースホルダーのように、以前使ったことのあるコマンドの場合は背景に薄く候補を出してくれる優しいプラグインです。zsh-autocompleteと噛み合わせが悪く、Zshが膨張するかもしれません。

[zsh-users/zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)

![https://camo.githubusercontent.com/16e72effec8df52a27e3aa9b1d24f37f86215d500d06ef18247d4206863a4f52/68747470733a2f2f61736369696e656d612e6f72672f612f33373339302e706e67](https://camo.githubusercontent.com/16e72effec8df52a27e3aa9b1d24f37f86215d500d06ef18247d4206863a4f52/68747470733a2f2f61736369696e656d612e6f72672f612f33373339302e706e67)

```bash
echo "zinit light zsh-users/zsh-autosuggestions" >> ~/.zshrc
```

---

**死ぬほど便利です。**
zsh-autocompleteはオススメNo.1です。しかし1つデメリットがあって

`zsh-users/zsh-autosuggestions` と少し相性が悪く、gitのコミットメッセージ等で使ってしまうと無限に検索が走り、CPU使用率が鬼のようになってしまう時があります。

面倒ですが、その度にアクティビティモニターで強制キルするしかありません。背に腹は変えられないですね・・・。

[marlonrichert/zsh-autocomplete](https://github.com/marlonrichert/zsh-autocomplete)

![https://github.com/marlonrichert/zsh-autocomplete/raw/main/.img/file-search.gif](https://github.com/marlonrichert/zsh-autocomplete/raw/main/.img/file-search.gif)

```bash
echo "zinit light marlonrichert/zsh-autocomplete" >> ~/.zshrc
```

~~### 【⭐️⭐️⭐️】シンタックスハイライト【必須】~~

~~見やすいように色分けしてくれます~~

~~[zdharma/fast-syntax-highlighting](https://github.com/zdharma/fast-syntax-highlighting)~~

### 【⭐️⭐️⭐️】anyframe【必須】

後述の履歴検索などにpecoを使うために導入してます。
こちらで製作者さん自らの記事があるので、読んでみてください。

[zshでpecoと連携するためのanyframeというプラグインを作った - Qiita](https://qiita.com/mollifier/items/81b18c012d7841ab33c3)

```bash
echo "zinit light mollifier/anyframe" >> ~/.zshrc
```

~~### 【⭐️⭐️】Ctrl + rでコマンド履歴を検索【あると便利】~~

~~[zdharma/history-search-multi-word](https://github.com/zdharma/history-search-multi-word)~~

![https://camo.githubusercontent.com/159e524cc65838f50d847b140eb36a80b74be06ffda93c8555109466d26cf1f4/68747470733a2f2f61736369696e656d612e6f72672f612f38383935342e706e67](https://camo.githubusercontent.com/159e524cc65838f50d847b140eb36a80b74be06ffda93c8555109466d26cf1f4/68747470733a2f2f61736369696e656d612e6f72672f612f38383935342e706e67)

### 【⭐️⭐️】catコマンドを見やすく表示する【あると便利】

catのプレーンテキストで読んでる人、もっと見やすい方法があります。

[sharkdp/bat](https://github.com/sharkdp/bat)

[https://camo.githubusercontent.com/7b7c397acc5b91b4c4cf7756015185fe3c5f700f70d256a212de51294a0cf673/68747470733a2f2f696d6775722e636f6d2f724773646e44652e706e67](https://camo.githubusercontent.com/7b7c397acc5b91b4c4cf7756015185fe3c5f700f70d256a212de51294a0cf673/68747470733a2f2f696d6775722e636f6d2f724773646e44652e706e67)

```bash

# 追記
zinit ice as"program" from"gh-r" mv"bat* -> bat" pick"bat/bat"
zinit light sharkdp/bat

# 以下はただのエイリアス設定
if builtin command -v bat > /dev/null; then
  alias cat="bat"
fi

```

### 【⭐️⭐️】jqをインタラクティブに使える【あると便利】

[reegnz/jq-zsh-plugin](https://github.com/reegnz/jq-zsh-plugin)

jqをインタラクティブに使える。JSONを標準出力に出すコマンドを入力した状態で `Alt+j` するとjqのクエリが書ける。

**要jq**

```bash
brew install jq

echo "zinit light reegnz/jq-zsh-plugin" >> ~/.zshrc
```

### 【⭐️】Gitの変更状態がわかる【人によっては役立つ】

使う機会はそんなに多くないだろうけど・・・かっこよくない？
Gitの変更状態がわかるls。lsの代わりにコマンド `k` を実行するだけ

[supercrabtree/k](https://github.com/supercrabtree/k)

![https://raw.githubusercontent.com/supercrabtree/k/gh-pages/inside-work-tree.jpg](https://raw.githubusercontent.com/supercrabtree/k/gh-pages/inside-work-tree.jpg)

```bash
echo "zinit light supercrabtree/k" >> ~/.zshrc
```

### 【⭐️】AWS CLI v2の補完【人によっては役立つ】

AWSよく使う人なら利便性がわかるはず・・・！

[drgr33n/oh-my-zsh_aws2-plugin](https://github.com/drgr33n/oh-my-zsh_aws2-plugin)

要AWS CLI v2
この順序で記述しないと `complete:13: command not found: compdef` のようなエラーになるので注意

```bash
# .zshrcに追記
autoload bashcompinit && bashcompinit
source ~/.zinit/plugins/drgr33n---oh-my-zsh_aws2-plugin/aws2_zsh_completer.sh
complete -C '/usr/local/bin/aws_completer' aws
zinit light drgr33n/oh-my-zsh_aws2-plugin
```

## めんどいからコピペしたいって人用

`~/.zshrc` の中の最終行から追記してください。

```bash

# Preztoのセットアップ
zinit snippet PZT::modules/helper/init.zsh

# oh-my-zshのセットアップ
zinit snippet OMZL::git.zsh
zinit snippet OMZP::git # <- なんかおまじないらしい
zinit cdclear -q

# プロンプトのカスタマイズ
setopt promptsubst
zinit snippet OMZT::gnzh

# iTerm2を使っている場合に、コマンド `tt タブ名` でタブ名を変更できる
zinit light gimbo/iterm2-tabs.zsh

# Peco前提
zinit light mollifier/anyframe

# Ctrl+x -> b
# peco でディレクトリの移動履歴を表示
bindkey '^xb' anyframe-widget-cdr
autoload -Uz chpwd_recent_dirs cdr add-zsh-hook
add-zsh-hook chpwd chpwd_recent_dirs

# Ctrl+x -> r
# peco でコマンドの実行履歴を表示
bindkey '^xr' anyframe-widget-execute-history

# Ctrl+x -> Ctrl+b
# peco でGitブランチを表示して切替え
bindkey '^x^b' anyframe-widget-checkout-git-branch

# Ctrl+x -> g
# GHQでクローンしたGitリポジトリを表示
bindkey '^xg' anyframe-widget-cd-ghq-repository

# 補完
zinit light marlonrichert/zsh-autocomplete

# Ctrl + r で履歴検索
zinit light zdharma/history-search-multi-word

# catコマンドを見やすくするbatの導入
zinit ice as"program" from"gh-r" mv"bat* -> bat" pick"bat/bat"
zinit light sharkdp/bat

# 以下はただのエイリアス設定
if builtin command -v bat > /dev/null; then
  alias cat="bat"
fi
```

## その他入れたい場合

[Curated list of awesome lists](https://project-awesome.org/unixorn/awesome-zsh-plugins)

![https://qiita-image-store.s3.ap-northeast-1.amazonaws.com/0/239325/0739972d-a6d4-3164-b683-32ba61767c65.png](https://qiita-image-store.s3.ap-northeast-1.amazonaws.com/0/239325/0739972d-a6d4-3164-b683-32ba61767c65.png)

## おわりに

その他何か便利そうなのがあれば共有いただけると幸いです。git openというのもあり、便利そうだったのですが、実はちゃんと動いてくれないので、何が原因なのか調査してる最中です・・・

普段からたくさん使うターミナルなので、ぜひ便利にカスタマイズしまくちゃってください！！！

では、ハッピーターミナルライフを〜

## 参考文献

[Homebrewのインストール - Qiita](https://qiita.com/zaburo/items/29fe23c1ceb6056109fd)

[[iTerm2入門]開発効率アップの基本機能/おすすめ設定をチートシートLikeにまとめたよ](https://zenn.dev/kumamoto/articles/bb3f416e34349e9ae13f)

[iTerm2のおすすめ設定〜ターミナル作業を効率化する〜 - Qiita](https://qiita.com/ruwatana/items/8d9c174250061721ad11)

[zinitでzsh環境をいい感じにしたメモ - Qiita](https://qiita.com/crossroad0201/items/17270127732dc20fa8b2)

[【Zsh】大改造ターミナル環境【Zinit】 - Qiita](https://qiita.com/obake_fe/items/c2edf65de684f026c59c)

[zinit をしっかりと理解する](https://zenn.dev/xeres/articles/2021-05-05-understanding-zinit-syntax)

[Oh-my-zshをやめてZinitに変えた話 - Qiita](https://qiita.com/yasunori-kirin0418/items/3557150582a1f7e08ecb)

[Introduction - Zinit Wiki](https://zdharma.github.io/zinit/wiki/INTRODUCTION/)

[めんどくせーからzshrcそのまま晒す - Qiita](https://qiita.com/kotashiratsuka/items/ae37757aa1d31d1d4f4d)

[macOSでのパッケージ管理 - Qiita](https://qiita.com/takeshisakuma/items/e9685fb9e394212247c0)
