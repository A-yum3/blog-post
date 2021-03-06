---
Title: Laravelでテストコードを書く(Pest)
Date: 2021-11-07T11:28:20+09:00
URL: https://yum3.hatenablog.jp/entry/laravel/test_pest
EditURL: https://blog.hatena.ne.jp/noikari/yum3.hatenablog.jp/atom/entry/13574176438030434579
Draft: true
---

テストの勉強をしていて、振る舞いをテストする（BDD）の例えに感銘を受けたのでPHPUnitから[Pest](https://pestphp.com/)への乗り換えを考え始めたので勉強しました。

##### 振る舞い検証の例

> 私が犬を呼ぶと、犬はすぐに私のところに来る。

##### コード検証の例

> 私が犬を呼ぶと、犬はまず左前足を動かし、次に右前足を動かし、頭を動かし、尻尾を動かす。
> そして足を動かし、頭を回転させ、尻尾を振って…

<!-- more -->

[:contents]

## Pest

### Pestとは

[Pest](https://pestphp.com/)とは2020年の初めにOSSとなったPHPUnitに代わるテストフレームワークです。

テストを簡単にし、読みやすく、理解しやすいものにします。

シンプルさに焦点を当てているため、テストを書くのが楽しくなります。

Laravelに限られず、PHPであれば利用ができます。（composerで）

また、JestのようなBDDフレームワーク系統の拡張ですが、xUnit系の書き方もできます。

柔軟なテストフレームワークです。

基本的な機能は揃っています。（プラグインで対応）

- Laravel最適化
- Livewire適用
- モック
- Faker
- データセット（PHPUnitで言うDataProvider）

基本的にPHPUnitの拡張になるのでPHPUnitはラップしていると考えても良さそうです。

### 準備

[インストール](https://pestphp.com/docs/installation)
ドキュメントがあるのでそちらを参照してください。

[Laravelで使う](https://pestphp.com/docs/plugins/laravel)
Laravel用のプラグインが用意されています。（artisanコマンドなど）

[IDE-Plugin](https://pestphp.com/docs/ide-plugins)
IDEで使えないと話になりません。各プラグインは用意されています。

### テスト

#### テストを書く

[Writing Tests](https://pestphp.com/docs/writing-tests)

テストを書く方法になります。

PHPUnitだと`Tests\TestCase`を継承するクラスを作成し、`public function testXXX`のように書き始めるか、`@test`のアノテーションを作ってメソッドを作ります。

**Pestはクラスを必要としません。**

`test()`か`it()`でメソッドを作成すればテストになります。

```test.php
test('asserts true is true', function () {
    $this->assertTrue(true);

    expect(true)->toBeTrue();
});
```

```it.php
it('asserts true is true', function () {
    $this->assertTrue(true);

    expect(true)->toBeTrue();
});
```

`test()`と`it()`はほとんど一緒です。ただし、`it()`を利用すると、テスト実行した時第一引数に指定した動作説明の前にitが自動的に付きます。

英語で動作説明を書くのであれば良いでしょうが日本語でテストを書く場合だと`test()`を利用する方のが違和感はないです。

#### テストケースの基礎

[Underlying Test Case](https://pestphp.com/docs/underlying-test-case)

Laravelだと`Tests\TestCase`を継承しなきゃいけないんだけど…。と考える人がいます。

Pestではデフォルトだと`PHPUnit\Framework\TestCase`にバインドされているため、`uses()`で指定する必要があります。

Laravelプラグインを入れて、`php artisan pest:install`をするとtests/Pest.phpがインストールされます。
そこにFeatureディレクトリ内は最初からusesするように設定されています。

```Pest.php
uses(Tests\TestCase::class)->in('Feature');
```

別な場所にも適応したい人は適宜設定します。

この`uses()`が便利で`uses()->in()`としてしまえば対象ディレクトリに一括でトレイト指定もできます。
`uses()->beforeEach()`とすればPHPUnitで言う`setUp()`と同等のこともできます。詳しくは試してみてください。

#### アサーション

[Assertions](https://pestphp.com/docs/assertions)

- `assertTrue()`
- `assertFalse()`
- `assertCount()`
- `assertEquals()`
- `assertEmpty()`
- `assertStringContainsString()`

基本的なものは揃っています。しかしPHPUnitと比べると「少ない」ように見えます。
前述の通り、PestはBDDフレームワークです。assertよりもexpectationsメソッドのが充実しています。

#### 期待

[Expectations](https://pestphp.com/docs/expectations)

`expect($value)`から始まり、arrowでチェインさせて書いていきます。

### 役に立ちそうなリンク

- GitHub WorkFlowでPestする
  - [How to Automatically Run Your Laravel PestPHP Tests on Each GitHub Pull Request?](https://devdojo.com/bobbyiliev/how-to-automatically-run-your-laravel-pestphp-tests-on-each-github-pull-request)
