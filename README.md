# テーブル設計

## users テーブル

| Column              | Type   | Options      |
| ------------------  | ------ | -----------  |
| nickname            | string | null: false  |
| email               | string | null: false, unique: true |
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
| category_id     | integer | null: false |
| condition_id    | integer | null: false |
| contribution_id | integer | null: false |
| prefectures_id  | integer | null: false |
| d_t_ship_id     | integer | null: false |
| user            | references | null: false, foreign_key: true 

### Association

- belongs_to :user
- has_one :purchase



##  purchasesテーブル

| Column       | Type       | Options                        |
| -----------  | ---------- | ------------------------------ |
| user         | references | null: false, foreign_key: true |
| item         | references | null: false, foreign_key: true |

### Association

- belongs_to :item
- belongs_to :user
- has_one :address


##  addressesテーブル

| Column         | Type     | Options     |
| -----------    | -------- | ----------- |
| post           | string   | null: false | 
| prefectures_id | string   | null: false |
| city           | string   | null: false |
| address        | integer  | null: false |
| building       | string   | null: false |
| tel            | string   | null: false |
| purchases      |references| null: false, foreign_key: true |

### Association

- belongs_to :purchase