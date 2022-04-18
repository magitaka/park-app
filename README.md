# README

## usersテーブル

| Column                          | Type   | Options            |
| ------------------------------- | ------ | ------------------ |
| email                           | string | null: false, unique|
| encrypted_password              | string | null: false        |
| name                            | string | null: false        |

### Association

- has_many :parks
- has_many :comments

## parksテーブル

| Column                          | Type         | Options                        |
| ------------------------------- | ------------ | ------------------------------ |
| title                           | string       | null: false                    |
| information                     | text         | null: false                    |
| place                           | string       | null: false                    |
| address_id                      | integer      | null: false                    |
| user                            | references   | null: false , foreign_key: true|

### Association

has_many :comments
belongs_to :user

## commentsテーブル

| Column                          | Type         | Options                        |
| ------------------------------- | ------------ | ------------------------------ |
| content                         | text         | null: false                    |
| like                            | string       | null: false                    |
| park                            | references   | null: false , foreign_key: true|
| user                            | references   | null: false , foreign_key: true|

### Association

- belongs_to :user
- belongs_to :park
