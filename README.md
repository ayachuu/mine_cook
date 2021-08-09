## Users テーブル

| Column             | Type    | Option                    |
| ------------------ | ------- | ------------------------- |
| email              | string  | null: false, unique: true |
| encrypted_password | string  | null: false               |
| nickname           | string  | null: false               |

### Association

- has_many :posts

## Posts テーブル

| Column   | Type       | Option                         |
| -------- | ---------- | ------------------------------ |
| title    | string     | null: false, unique: true      |
| text     | text       | null: false                    |
| genre_id | integer    | null: false                    |
| user     | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to_active_hash :genre