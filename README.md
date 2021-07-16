# テーブル設計

## users テーブル

| Column              | Type   | Options      |
| ------------------  | ------ | -----------  |
| nickname            | string | null: false  |
| email               | string | unique: true |
| encrypted_password  | string | null: false  |
| family_name         | string | null: false  |
| first_name          | string | null: false  |
| family_name_reading | string | null: false  |
| first_name_reading  | string | null: false  |
| birthday            | date   | null: false  |

### Association

- has_many :comments
- has_many :items
- has_many :purchases

## items テーブル

| Column          | Type    | Options     |
| ------------    | ------  | ----------- |
| name            | string  | null: false |
| description     | text    | null: false |
| price           | integer | null: false |
| category_id     |         | null: false |
| condition_id    |         | null: false |
| contribution_id |         | null: false |
| prefectures_id  |         | null: false |
| d_t_ship_id     |         | null: false |
| user            | references | null: false, foreign_key: true 

### Association

- belongs_to :user
- has_one :purchases



##  purchasesテーブル

| Column       | Type       | Options                        |
| -----------  | ---------- | ------------------------------ |
| s_address_id |            | null: false                    |
| user         | references | null: false, foreign_key: true |
| item         | references | null: false, foreign_key: true |

### Association

- belongs_to :item
- belongs_to :user
- belongs_to :address


##  addressesテーブル

| Column         | Type     | Options     |
| -----------    | -------- | ----------- |
| post           | integer  | null: false | 
| prefectures_id | string   | null: false |
| city_id        | string   | null: false |
| address_id     | integer  | null: false |
| building_id    | string   | null: false |
| tel_id         | string   | null: false |
| user         | references | null: false, foreign_key: true |
| item         | references | null: false, foreign_key: true |

### Association

- belongs_to :item
- belongs_to :user
- has_one :purchases