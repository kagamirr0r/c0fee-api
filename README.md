# C0FEE

コーヒーのロースター / 豆 / 淹れ方 を記録、共有できるアプリです。<br/>
どんなコーヒーがあるのか探してみましょう！<br/>

---

### 機能一覧

- ユーザー登録、ログイン ( devise 等 )
- CRUD✖︎4
- 画像アップロード ( carrierwave, minimagick, piet, fog-aws ）
- お気に入り ✖︎3 ( ajax )
- 検索
- 2 か国語 (日/英) 対応（ I18n, I18n-js, globalize ）
- チャート （ chart-js-rails ）
- 地図表示 ( Google Map API, geocoder )
- お問い合わせ （ Action Mailer ）
- ページネーション ( kaminari )
- レスポンシブデザイン

---

### インフラ

- CircleCI ( CI / CD )

---

### バックエンド

Ruby 2.6.3<br/>
Rails 5.2.3<br/>
PostgreSQL 11.0<br/>

---

### フロントエンド

Materialize.css

---

### 開発

VSCode<br/>
Docker Desktop for Mac<br/>
docker-compose<br/>

使用 Image:<br/>

- ruby2.6.3
- postgres11.0-alpine

効率化 Gems:<br/>

- Rubocop ( リンター )
- Hirb ( オブジェクト表示 )
- Ridgepole ( マイグレーション )
- Enum ( 列挙型 )
- Lograge ( ログフォーマット ) など

バージョン管理:<br/>

- Git
- GitHub

---

### テスト

Ci 上で自動化<br/>
結果を Slack に通知<br/>

- Rspec, Capybara, Faker, FactoryBot
- 単体テスト
- 統合テスト （ FeatureSpec ）

---

### デプロイ

テスト後 ECS に自動デプロイ（deploy ブランチのみ）<br/>
ログは Cloud Watch Logs から Kinesis Data Firehose で S3 に定期保管<br/>

---

### ER 図

![ER図](https://user-images.githubusercontent.com/45422771/89233939-bc545980-d625-11ea-8ea7-bec7a10d638b.png)

---

### クラウドアーキテクチャ

![AWS図](https://user-images.githubusercontent.com/45422771/89865679-21d9b480-dbe9-11ea-9ae1-925f04375e82.png)

### マイグレーション方法

`bundle exec ridgepole -c config/database.yml -f db/Schemafile --apply`
