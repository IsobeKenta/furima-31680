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
|date              |string|null: false|



## itemsテーブル

|Column        |Type   |Options    |
|--------------|-------|-----------|
|product       |string |null: false|
|explanation   |text   |null: false|
|type          |integer|null: false|
|status        |integer|null: false|
|price         |integer|null: false|
|delivery_price|integer|null: false|
|prefecture    |integer|null: false|
|days          |integer|null: false|

## ordersテーブル

|Column|Type      |Options          |
|------|----------|-----------------|
|user  |references|foreign_key: true|
|item  |references|foreign_key: true|

## addressesテーブル

|Column    |Type   |Options    |
|----------|-------|-----------|
|postel    |string |null: false|
|prefecture|integer|null: false|
|city      |string |null: false|
|number    |string |null: false|
|tel       |string |null: false|