# アプリ名
  Mine  
# 概要
 - 自分が作れる料理を写真・レシピと一緒に管理できる
 - 新しく挑戦した料理も登録することで、サイトや料理本を何冊も用意しなくても確認できる
 - 「きょうの料理は何にしようか？」と悩んだ時に、ボタンを押せば料理がランダムで表示され、参考にすることができる

# 本番環境
 URL：http://mine-cook.herokuapp.com/  
 ID：admin  
 PASS：7777  
 user: aaa@aaa.jp  
 user-password: asdf1234
  
# 制作背景（意図）
 - たくさんの料理本を持っていても、どこに何の料理があるか探さなければならない
 - 今日は何の料理にしよう？と考えるのは、家事の中で１番大変に感じていた  

※ランダムで1週間の献立を考えてくれるアプリはたくさんあるが、自分の得意料理で献立を立てられるアプリがなかった
 上記のことを踏まえ、「こんなアプリがあるといいのにな」という希望からオリジナルアプリを作成。
 今は、作成途中で、実際に家事をしている方に使い勝手を確認し手直しする箇所を洗い出している。  
# DEMO
### トップページ
[![Image from Gyazo](https://i.gyazo.com/e342fb81035088f97fb2ef0752d28383.jpg)](https://gyazo.com/e342fb81035088f97fb2ef0752d28383)
 - 上部ボタンから各ページに遷移
 - 中央、左は「Today's Menu」を押すことで、登録されているメニューをランダムで表示する
 - 中央、右は、登録時「ジャンル」を指定することで、ジャンルごとの検索ができる
 - 下部は、swiperにて登録した料理の画像を表示。
### ログインページ
[![Image from Gyazo](https://i.gyazo.com/06d16f2376a9a01373144fcf8480e381.png)](https://gyazo.com/06d16f2376a9a01373144fcf8480e381)
 - ログアウトするとこのページに遷移する
 - ログインしていない場合に各ページに遷移しようとするとこのページに遷移するようになっている
### 新規登録画面
[![Image from Gyazo](https://i.gyazo.com/dac56d0d38c9c0769f52a0a77e0fee29.gif)](https://gyazo.com/dac56d0d38c9c0769f52a0a77e0fee29)
 - ログインページ内に新規登録に遷移する記述（ボタン）あり
 - email,nickname,passwordの登録が必要
 - 「戻る」を押すとログインページに遷移する
 - 「新規登録」を押すとトップページに遷移する
### メニュー登録画面
[![Image from Gyazo](https://i.gyazo.com/8763530e02a63005a17f605b0bedfc3e.gif)](https://gyazo.com/8763530e02a63005a17f605b0bedfc3e)
 - 「Menu Register」から登録ページに遷移する
 - 料理名、写真、テキスト、ジャンルを登録する
 - テキストには、料理で使用する材料や手順などメモ感覚で使用できる
 - 「New Menu」からトップページに戻ることができる
 - 「登録」ボタンを押すことで、メニューが登録され、トップページに遷移する

### 一覧表示画面
[![Image from Gyazo](https://i.gyazo.com/a01a644025420eb434e18c1c919087e2.gif)](https://gyazo.com/a01a644025420eb434e18c1c919087e2)
 - トップページ「Menu List」から一覧ページに遷移する
 - 登録されているメニューの画像と料理名が表示される
 - 画像を選択すると詳細表示画面に遷移する
 - 「List up」を押すとトップページに戻る
### 詳細表示画面(削除)
[![Image from Gyazo](https://i.gyazo.com/6d122e6c5ffd1c71e76cef19a4fc6afc.jpg)](https://gyazo.com/6d122e6c5ffd1c71e76cef19a4fc6afc)
 - swiperの画像以外は、クリックすると詳細表示画面に遷移する
 - 「編集」ボタンで、編集画面に遷移する
 - 「削除」ボタンで削除することができる
 - 「戻る」ボタンでトップページに遷移する

### 編集画面
[![Image from Gyazo](https://i.gyazo.com/de096e1d7881a299fa2030639398d2c7.png)](https://gyazo.com/de096e1d7881a299fa2030639398d2c7)
 - 登録した時の内容が反映されている。
 - 各項目変更可能。
 - 「変更」ボタンで編集されトップページに遷移する
 - 「Menu Edit」をクリックするとトップページに遷移する


# 工夫したポイント:
 ### ransackによる検索機能
[![Image from Gyazo](https://i.gyazo.com/d4159d5c889df00988c2021ac0d6273a.gif)](https://gyazo.com/d4159d5c889df00988c2021ac0d6273a)
 - メニュー登録時、Active Hashでジャンルを登録することで、ジャンル分けされた一覧を表示することができる

 ### 画面デザイン
  全体的にシンプルな作りにしたことで、老若男女、使えるようにした。



# 使用技術（開発環境）
 ### バックエンド
 Ruby,Ruby on Rails
 ### フロントエンド
 HTML,CSS,Java Script
 ### データベース
 Sequel pro, MySQL
 ### インフラ
AWS(EC2)
 ### Webサーバー（本番環境）
 Heroku
 ### ソース管理
 GitHub, GitHubDesktop
 ### テスト
 RSpec
 ### エディタ
 VSCode
# 課題や今後実装したい機能
 - ユーザー（メニューを登録した本人）のみの利用にしたい
 - APIを実装し、新しいメニューを探す際の検索機能をつけたい
 - 第三者の使用した感想より機能を充実させたい
# DB設計

## Users テーブル

| Column             | Type    | Option                    |
| ------------------ | ------- | ------------------------- |
| email              | string  | null: false, unique: true |
| encrypted_password | string  | null: false               |
| nickname           | string  | null: false               |

### Association

- has_many :posts

## Posts テーブル

| Column   | Type       | Option                         |
| -------- | ---------- | ------------------------------ |
| title    | string     | null: false, unique: true      |
| text     | text       | null: false                    |
| genre_id | integer    | null: false                    |
| user     | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to_active_hash :genre