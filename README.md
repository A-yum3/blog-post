# 概要

はてなブログと連携して記事を管理するリポジトリ

## 使い方

entries/yum3.hatenablog.jp/以下の更新はgitのpush時にGithub Actionが走り、自動的にはてなブログとの連携を行う。

- `make pull` はてなブログから記事の取得
- `make post path={カスタムURL}` 下書き記事の雛形追加する。
  - カスタムURLはそのままディレクトリ構成に繋がるため、カテゴリ/記事名のスラッグで作るのが妥当
