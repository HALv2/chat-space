# DB設計
## usersテーブル

|Column|Type|Options|
|------|----|-------|
|name|integer|null: false|
|email|string|null: false, unique: true|
|password|string|null: false|

### Association
- has_many :groups
- has_many :group_users
- has_many :messages

## groupsテーブル

|Column|Type|Options|
|------|----|-------|
|name|integer|null: false|
|user_id|integer|null: false, foreign_key: true|

### Association

- has_many :users
- has_many :messages
- has_many :group_users

## groups_usersテーブル

|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|group_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :group
- belongs_to :user

## Messagesテーブル

|Column|Type|Options|
|------|----|-------|
|message|text|null: false|
|user_id|integer|null: false, foreign_key: true|
|group_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :group
- belongs_to :user