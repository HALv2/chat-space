# DB設計
## usersテーブル

|Column|Type|Options|
|------|----|-------|
|name|stging|null: false|
|email|string|null: false, unique: true|
|password|string|null: false|

### Association
- has_many :groups, through: groups_users
- has_many :group_users
- has_many :messages

## groupsテーブル

|Column|Type|Options|
|------|----|-------|
|name|integer|null: false|

### Association

- has_many :users, through: groups_users
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
|body|text|null: false|
|image|string||
|user_id|integer|null: false, foreign_key: true|
|group_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :group
- belongs_to :user