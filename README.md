

# 構成について

- 開発者ができるだけ無駄なものを変更しないような構成を心がけた
  - `wp-cli`でWordPressのコア部分を管理する
  - `composer + wpackagist`でテーマとプラグインのバージョンを管理する



## wp-cliってなに？

- WordPressを管理するための便利なコマンドラインツール
  - 特定のバージョンを落としてこれる
  - テーマとかプラグインを一発で入れたり有効/無効を管理したりできる
  - 今入ってるテーマとかプラグインの情報が見られる



## Composerってなに？

- PHPの`ライブラリのバージョン管理ツール`
- 今回はWordPressのプラグインやテーマを`バージョン管理`するために使う
  - バージョンをちゃんと管理しないと、勝手にバージョンが上がってエラーが起きた時に戻せない
-  wpackagistは難しいのであんまり詳しく言わないけどWordPressのプラグインのバージョン情報が乗ってるすごいところなのでそこから取ってきた情報でWordPressの環境を管理する



# 開発環境の構築方法(Mac)

## Gitリポジトリをクローンする

ターミナル上で

```sh
git clone git@github.com:infra-workshop/half-year-event-site-wp.git
```

としたら

```sh
cd half-year-event-site-wp
```

でプロジェクトルートへ移動

## direnvを入れる(初回のみ)

```sh
brew intall direnv
cp .envrc{.dist,}
direnv allow
```

Homebrewない場合はまず入れる

## wp-cliを入れる(初回のみ)

ターミナル上で

```sh
brew install wp-cli
wp core download --locale=ja
```

とすると、WordPressの最新版が入ってくる

## Composerを入れる

```sh
curl -sS https://getcomposer.org/installer | php
mv composer.phar /usr/local/bin/composer
composer install
```

これで、WordPressのソースは全部揃う。

## 開発環境を立ち上げる

[Docker for Mac](https://docs.docker.com/docker-for-mac/install/#download-docker-for-mac)を入れる

```
./sh/build.sh
```
