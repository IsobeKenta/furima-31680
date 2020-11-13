## usersテーブル

|Column            |Type  |Options    |    
|------------------|------|-----------|
|nickname          |string|null: false|
|email             |string|null: false|
|encrypted_password|string|null: false|
|family_name       |string|null: false|
|first_name        |string|null: false|
|family_name_kana  |string|null: false|
|first_name_kana   |string|null: false|
|birthday          |date  |null: false|

### Association
- has_many :items
- has_many :orders



## itemsテーブル

|Column        |Type   |Options    |
|--------------|-------|-----------|
|product       |string |null: false|
|explanation   |text   |null: false|
|type          |integer|null: false|
|status_id     |integer|null: false|
|price         |string |null: false|
|delivery_price|integer|null: false|
|prefecture    |integer|null: false|
|days          |integer|null: false|

### Association
- belongs_to :user
- has_many :orders

## ordersテーブル

|Column|Type      |Options          |
|------|----------|-----------------|
|user  |references|foreign_key: true|
|item  |references|foreign_key: true|

### Association
- belongs_to :user
- belongs_to :item
- has_one :address


## addressesテーブル

|Column       |Type   |Options    |
|-------------|-------|-----------|
|postel       |string |null: false|
|prefecture   |integer|null: false|
|city         |string |null: false|
|house_number |string |null: false|
|building_name|string |           |
|tel          |string |null: false|

### Association
- belongs_to :order