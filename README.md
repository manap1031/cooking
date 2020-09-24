## usersテーブル

| Column                | Type    | Options     |
| --------------------- | ------- | ----------- |
| nickname              | string  | null: false |
| email                 | string  | null: false |
| password              | string  | null: false |
| password_confirmation | string  | null: false |

### assosiation
- has_many: cooks


## cooksテーブル

| Column                | Type        | Options                     |
| --------------------- | ----------- | --------------------------- |
| recipe_name           | string      | null: false                 |
| recipe                | text        | null: false                 |
| user_id               | references  |null:false, foreign_key:true |

### assosiation
- belongs_to: user
- has_many: images


## imagesテーブル

| Column                | Type        | Options                     |
| --------------------- | ----------- | --------------------------- |
| image                 | string      | null: false                 |
| posts_id              | references  |null:false, foreign_key:true |

### asossiation
- belongs_to: cook




