## usersテーブル

|Column          |Type  |Options    |    
|----------------|------|-----------|
|nickname        |string|null: false|
|email           |string|null: false|
|password        |string|null: false|
|family_name     |string|null: false|
|first_name      |string|null: false|
|family_name_kana|string|null: false|
|first_name_kana |string|null: false|
|birthday        |string|null: false|

## itemsテーブル

|Column        |Type   |Options    |
|--------------|-------|-----------|
|product       |string |null: false|
|explanation   |text   |null: false|
|categori      |string |null: false|
|status        |string |null: false|
|price         |integer|null: false|
|delivery_price|integer|null: false|
|source        |string |null: false|
|days          |string |null: false|

## ordersテーブル

|Column|Type      |Options          |
|------|----------|-----------------|
|when  |string    |null: false      |    |
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