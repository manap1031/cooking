## アプリケーション名
cooking

## 概要
趣味の範囲で料理を作って簡単に投稿ができる様になっている。
もし気に入ったユーザーがいたら、そのユーザが投稿した料理の画像一覧を見て、自分で作ってみるのもよし！！

## URL
デプロイ次第、記述します。

## 課題解決
趣味の範囲で適当に作った料理を適当に投稿して、適当に誰かが作って、もし気に入ったらいいねを押す！！堅苦しくない、適当にがメイン！！

## 要件定義
1.ユーザー管理
 目的:登録したユーザーは画像の投稿ができる。

 詳細:ユーザー登録はシンプルにemailとnickname、passwordのみで簡単に登録ができる。

 ストーリー:
 ユーザー登録はシンプルにemailとnickname、passwordのみで簡単に登録ができる。

 2.投稿画像の詳細
 目的:投稿画像の詳細が見られる。

 詳細:投稿した画像の詳細が見られる。また詳細画像から投稿者が投稿した全ての画像が見られるようになる。

 ストーリー:
・投稿画像の詳細が見られる。
・投稿画像のページから投稿したユーザーの全ての画像が見られるようになっている。
・詳細は登録していないユーザーも見ることができる。

3.商品検索
目的:ユーザーが簡単にデータ検索出来るようにする。

詳細:料理名、レシピのどちらかにキーワードがあるとその画像が一覧となって見られるようになる。

ストーリー:
・画像は数点出品されていることが前提
・条件に該当する商品の検索結果のページで表示する

4.マイページ
目的:
・投稿した画像の編集、削除ができる。
・画像の投稿ができる。

詳細:登録していないユーザーは投稿ボタン、削除、編集ボタンが表示されない。

ストーリー:ユーザー登録していないと、閲覧以外のことができない。

5.いいね機能
目的:いいね機能を実装し、いいねの数の順で表示ができるようにする。

詳細:現在実装していないが、非同期で実装予定。

ストーリー:いいねが評価基準として画像の表示順を変更


## ER図
https://app.lucidchart.com/documents/edit/38de37ee-6586-45f5-a0d9-8e1ddeb75a1b/0_0#?folder_id=home&browser=icon

##  バージョン/導入したライブラリ
rails: 6.0.0
mysql2: 0.4.4

gem 'pry-rails'
gem 'mini_magick'
gem 'image_processing', '~> 1.2'
gem 'devise'
gem 'rails-i18n'



## usersテーブル

| Column                | Type    | Options     |
| --------------------- | ------- | ----------- |
| nickname              | string  | null: false |
| email                 | string  | null: false |
| password              | string  | null: false |
| password_confirmation | string  | null: false |

### assosiation
- has_many: cooks


## cooksテーブル

| Column                | Type        | Options                     |
| --------------------- | ----------- | --------------------------- |
| recipe_name           | string      | null: false                 |
| recipe                | text        | null: false                 |
| user_id               | references  |null:false, foreign_key:true |

### assosiation
- belongs_to: user
- has_many: images


## imagesテーブル

| Column                | Type        | Options                     |
| --------------------- | ----------- | --------------------------- |
| image                 | string      | null: false                 |
| posts_id              | references  |null:false, foreign_key:true |

### asossiation
- belongs_to: cook




