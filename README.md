# テーブル設計

## users テーブル

| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| nickname           | string | null: false |
| email              | string | null: false |
| encrypted_password | string | null: false |
| name               | string | null: false |

### Association
- has_many :comments
- has_many :items
- has_many :purchases

## items テーブル

| Column      | Type    | Options     |
| ------      | ------  | ----------- |
| image           ActiveStorageで実装  |
| name        | string  | null: false |
| description | text    |
| price       | integer | null: false |
| user        | references | null: false, foreign_key: true 

### Association
- has_many :comments
- belongs_to :user
- has_one :purchases


## comments テーブル

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| text   | text    |
| user   | references | null: false, foreign_key: true |
| item   | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :item

##  purchasesテーブル

| Column  | Type       | Options                        |
| ------- | ---------- | ------------------------------ |
| user    | references | null: false, foreign_key: true |
| item    | references | null: false, foreign_key: true |

### Association

- belongs_to :item
- belongs_to :user
