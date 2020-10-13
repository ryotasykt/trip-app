# README

## アプリケーション名
trip-app

## アプリケーション概要
国内での旅行体験を写真と共に共有できるアプリケーションです。  
気軽に旅先の情報を交換でき、今まで知らなかった場所や行ってみたい観光スポットに出会えるかもしれません。  
ユーザー登録を行うことでマイページを作成でき、過去の投稿を一覧で確認できます。  
また、他のユーザーが旅した日本の名所やおすすめスポットを検索することもできます。

## url
https://trip-app-1.herokuapp.com/

## テスト用アカウント
### ログイン機能  

| nickname | email | password |
| ---------| ------| ---------|
| a        | a@a   | 123456a  |
| b        | b@b   | 123456a  |

### Basic認証  

| ID   | PASSWORD | 
| -----| ---------|
| trip | onsen    |


## 利用方法
1. トップページのヘッダーの新規登録ボタンから新規登録ページに遷移頂き、ユーザー登録をお願い致します。  
2. ログイン時には、トップページのヘッダーにニックネーム(マイページボタン)とログインボタンが表示されます。  
3. 未ログイン時には、トップページのヘッダーに新規登録ボタンとログインボタンが表示されます。  
4. マイページにてご自身の過去投稿を一覧で確認することができます。 
5. トップページの中央の投稿ボタンから投稿ページに遷移頂き、必須情報を入力頂くと投稿が完了します。  
6. 投稿者は投稿画像をクリックし、投稿詳細ページにて編集と削除が可能です。  
7. ログイン状態であれば、投稿画像をクリックすると投稿詳細画面にて投稿者にコメントをすることも可能です。  
8. トップページの中央の検索ボタンから、投稿をキーワード検索できます。  

## 目指した課題解決
### ペルソナ
10代から40代の男女です。国内旅行のパッケージでなく、コミニュティを通じて、実際に体験した生の情報を得たい人たちが対象です。  
また現在、海外旅行が敬遠される中で、国内の観光スポットに焦点を当てた投稿及び検索サイトを作成することで、国内旅行の需要を高める手助けをし、地域経済の発展に繋げることも課題解決の一つです。

## 洗い出した要件
### デプロイ(Heroku、Basic認証)
本番環境でアプリを動作させるための機能です。
　
### ユーザー管理機能(新規登録、ログイン/ログアウト、マイページ機能):
個人のユーザー情報を管理するための機能です。

### 投稿機能(画像、テキスト投稿)
ユーザーの共有したい情報を発信するための機能です。

### 投稿一覧表示機能
ユーザーの投稿した情報をひと目で確認するための機能です。

### 投稿詳細表示機能
ユーザーの投稿した情報の詳細を確認するための機能です。

### 投稿編集機能
一度投稿した情報を再度編集するための機能です。

### 投稿削除機能
不要になった投稿を削除するための機能です。

### コメント機能
投稿に対し、さらに情報を得たい、投稿者とコミュニケーションを取りたいという時にコメントができるようにするための機能です。

### 投稿検索機能
気になる投稿をキーワードで検索するできるようにするための機能です。

### いいね機能 
お気に入りの投稿にいいねをつけることができるようにするための機能です。

### 画像複数投稿機能
複数の画像を同時に投稿できるようにするための機能です。

### 画像スライド表示機能
画像をスライド表示させることで、投稿を閲覧しやすくするための機能です。

## 実装した機能についてのGIFと説明
### デプロイ  
[Basic認証(Heroku)](https://gyazo.com/64acc79a051799f4f40b81f8949dc27d)

### ユーザー管理機能  
[新規登録](https://gyazo.com/cf644df58666380330ecce1cb0496106)  
[ログイン/ログアウト](https://gyazo.com/802bc3d37ab274ff82d9cfb6f70f84e7)  
[マイページ機能](https://gyazo.com/774848bc8e550ce4643964b0a1943e43)

### 投稿機能  
[画像・テキスト投稿](https://gyazo.com/ecd2025a59aa8190e52002293fef07f8)

### 投稿一覧表示機能  
[投稿一覧表示](https://gyazo.com/e8b6f74f8bdf1b7376bf57a9c7c0ee42)

### 投稿詳細表示機能  
[投稿詳細表示](https://gyazo.com/2a889ddefd067e385ba0c978efcc849d)

### 投稿編集機能  
[投稿編集](https://gyazo.com/ba123088183e98543c51d84bb16a66e3)

### 投稿削除機能  
[投稿削除](https://gyazo.com/2ea56614f847bbe54f22ed4d58cdaf17)

### コメント機能  
[コメント投稿](https://gyazo.com/a3ba7ada06f051e3d3e6399c09b842d3)

### 投稿検索機能  
[キーワード検索](https://gyazo.com/91bfdb1742280c8b412ef978dfb866c3)

## 実装予定の機能
### いいね機能  
### 画像複数投稿機能  
### 画像スライド表示機能

## ローカルでの動作方法
### Rubyバージョン：  
ruby '2.6.5'

### パッケージ：  
gem 'rails', '~> 6.0.0'  
gem 'mysql2', '>= 0.4.4'  
gem 'webpacker', '~> 4.0'  
gem 'rspec-rails', '~> 4.0.0'  
gem 'factory_bot_rails'  
gem 'faker'  
gem 'rubocop', require: false  
gem 'rails_12factor  
gem 'pry-rails'  
gem 'devise'  
gem 'mini_magick'  
gem 'image_processing', '~> 1.2'  
gem 'active_hash'  
gem "aws-sdk-s3", require: false

## データベース設計
[ER図](https://www.draw.io/#G1xPcERN3Ec9-VZQtFvJkTTFChv-_h6Cuo)

## users テーブル

| Column             | Type    | Options                   |
| -------------------| ------- | ------------------------- |
| nickname           | string  | null: false, unique: true |
| email              | string  | null: false, unique: true |
| encrypted_password | string  | null: false               |
| birth_place        | string  |                           |

### Association

- has_many :posts
- has_many :comments

## posts テーブル

| Column                | Type       | Options                        |
| --------------------- | ---------- | ------------------------------ |
| user_id               | references | null: false, foreign_key: true |
| name                  | string     | null: false                    |
| description           | text       | null: false                    |
| member_id             | integer    | null: false                    |
| transportation_id     | integer    | null: false                    |
| satisfaction_level_id | integer    | null: false                    |
| prefecture_id         | integer    | null: false                    |

### Association

- belongs_to :user
- has_many :comments
- has_one_attached :image
- belongs_to_active_hash :member
- belongs_to_active_hash :transportation
- belongs_to_active_hash :satisfaction_level
- belongs_to_active_hash :prefecture

## comments テーブル

| Column  | Type       | Options                        |
| ------- | ---------- | ------------------------------ |
| user_id | integer    |                                |
| post_id | integer    |                                |
| text    | text       |                                |

### Association

- belongs_to :user
- belongs_to :post
