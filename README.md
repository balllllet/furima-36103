# テーブル設計

## users テーブル

| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| nickname           | string | null: false |
| email              | string | null: false |
| encrypted_password | string | null: false |
| family_name        | string | null: false |
| first_name         | string | null: false |
| birth                       | null: false |

### Association
- has_many :comments
- has_many :items
- has_many :purchases

## items テーブル

| Column      | Type    | Options     |
| ------      | ------  | ----------- |
| name        | string  | null: false |
| description | text    | null: false |
| price       | integer | null: false |
| category    |         | null: false |
| condition   |         | null: false |
| shipping    |         | null: false |
| s_address   |         | null: false |
| d_t_ship    |         | null: false |
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

| Column      | Type       | Options                        |
| ----------- | ---------- | ------------------------------ |
| s_address   |            | null: false                    |
| user        | references | null: false, foreign_key: true |
| item        | references | null: false, foreign_key: true |

### Association

- belongs_to :item
- belongs_to :user
