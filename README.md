# README

## アプリケーション名
* trip_app

## アプリケーション概要
* 日本の名所やおすすめスポットを共有、検索することができる。

## url
https://trip-app-1.herokuapp.com/

## テスト用アカウント
* Basic認証
  ID :trip
  PASS :onsen 

## 利用方法
1. トップページの新規登録ボタンから新規登録ページに遷移頂き、ご登録を頂いた後投稿が可能となります。
2. トップページの投稿ボタンから投稿ページに遷移頂き、投稿が可能です。
3. 投稿詳細画面にて投稿者にコメントをすることも可能です。

## 目指した課題解決
* 現在、海外旅行が敬遠されるなかで、国内の観光スポットに焦点を当てた投稿及び検索サイトがあれば
  国内旅行の需要を高められ、地域経済の発展に繋げたい。

## 洗い出した要件
* ユーザー管理機能
* 観光スポット情報投稿機能
* 投稿一覧表示機能
* 投稿詳細表示機能 
* 投稿編集機能
* 投稿削除機能
* コメント機能
* 投稿検索機能

## 実装した機能についてのGIFと説明
* 

## 実装予定の機能
* 

## データベース設計
[ER図](https://www.draw.io/#G1xPcERN3Ec9-VZQtFvJkTTFChv-_h6Cuo)

## ローカルでの動作方法
* 

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
| user                  | references | null: false, foreign_key: true |
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

| Column | Type       | Options                        |
| -------| ---------- | ------------------------------ |
| user   | references | null: false, foreign_key: true |
| post   | references | null: false, foreign_key: true |
| text   | text       |                                |

### Association

- belongs_to :user
- belongs_to :post