# Letter Book（リポジトリ/プロジェクト/OSSなどの名前）


```
現在保育士として勤務している中で、保育士の日々の業務の簡素化、
保護者と保育士間で円滑にコミュニケーションが取れないかと考え、業務の1つである#お便り帳アプリを制作しました。

```

# 動作環境


- ruby 2.6.6
- Rails 6.0.3.2
- JavaScript 
- jQuery
### データベース 
- PostgreSQL


# DEMO
https://letter-book.work/

![スクリーンショット 2020-08-23 23 10 37](https://user-images.githubusercontent.com/56257230/106136828-2a30a680-61ad-11eb-8dbd-03a04b66d58f.PNG)


# 工夫したところ

実際に現場の職員の話、助言をいただき使っていたただくユーザ目線を考え試行錯誤しなが作成。
具体的には、

### ◎スマホで操作できるようレスポンシブデザイン

### ◎忙しい朝の時間にボタン１クリックで登園の時間を送信(time_zoneを使用）

### ◎保育園からのお知らせ、配布物も"iframe"を使いwordで資料、手紙等を共有し配布漏れ、印刷物のコスト削減。

### ◎"googleCalendar"を埋め込む事でアプリ内で年間行事（日時を）知る事ができる。

### ◎返信を書くのが忙しい保護者ように（イイね機能を応用し、見ました！スタンプを実装）


# 使用方法


### プロフィール画像
![プロフィール](https://user-images.githubusercontent.com/56257230/106153729-33783e00-61c2-11eb-90ff-99568c53590a.gif)
- 『プロフィール』クリックし、プロフィール変更可能

### お便り帳返信
![お便り帳返信](https://user-images.githubusercontent.com/56257230/106139840-4a626480-61b1-11eb-8ff6-c036a2fb0433.gif)
- 保育園での様子 → 家庭での様子（検温 家庭での様子を記入） → 投稿 <br>
- #忙しいときは『ニコちゃんマーク』押すと、『見ました！』印でリアクション）


### 登校時間＆降園時間をワンクリックで
![登校](https://user-images.githubusercontent.com/56257230/106141053-f193cb80-61b2-11eb-9c31-9f1dd1fb7e62.gif)
- "登園"or"降園"を押すと押した時間を取ってきて表示！ 

### 土曜申請書
![土曜申請](https://user-images.githubusercontent.com/56257230/106142076-5d2a6880-61b4-11eb-9ad5-3eee07173c66.gif)
- 『土曜申請』をクリックし、1,日付 2,時間 3,理由 入力する


![土曜申請一覧](https://user-images.githubusercontent.com/56257230/106142543-f6597f00-61b4-11eb-8b20-e2637b47a2d9.gif)
- 『土曜申請一覧』で一覧を見たり、内容編集＆削除出来る

### 欠席届け
![欠席](https://user-images.githubusercontent.com/56257230/106143123-b21aae80-61b5-11eb-8cb1-9843fd01c716.gif)
- 『欠席届け』をクリックし、1,日付 2,時間 3,症状　入力する


![欠席編集](https://user-images.githubusercontent.com/56257230/106143527-3d943f80-61b6-11eb-847a-ba36d5d50a7d.gif)
- 欠席届けも同じく一覧見たり、編集＆削除可能

### 献立
![献立](https://user-images.githubusercontent.com/56257230/106152050-5a357500-61c0-11eb-8fdd-1ee403769fb8.gif)
- Topページから 『献立』クリック → 『詳細』（献立の詳細） → 『おやつ』（おやつの詳細）

### お問合せ
![お問合せ](https://user-images.githubusercontent.com/56257230/106152919-522a0500-61c1-11eb-932e-aa2ed1157b92.gif)
- Topページから 『お問合せ』クリック → 『お問合せform』 → お問合せ内容を入力 #管理者画面とチャット感覚でやりとりが可能 

### お知らせ
![お知らせ](https://user-images.githubusercontent.com/56257230/106154607-21e36600-61c3-11eb-9dd3-d7f9a3e4bd92.gif)
- Topページから 『お知らせ』クリック → 保育園からのお知らせ、配布物も"iframe"を使いwordで資料、手紙等を共有し配布漏れ、印刷物のコスト削減。


### absencesテーブル
|Column|Type| Options |
|:---|:---|:---|
|integer|app_id|---------------|
|string|title|default: "その他"|
|date|date|null: false|
|datetime|created_at|precision: 6, null: false|
|datetime|updated_at|precision: 6, null: false|


### appsテーブル
|Column|Type| Options |
|:---|:---|:---|
|string|email|default: "", null: false|
|string|image|---------------|
|string|title|---------------|
|datetime|created_at|precision: 6, null: false|
|datetime|updated_at|precision: 6, null: false|


### contactsテーブル
|Column|Type| Options |
|:---|:---|:---|
|string|title|---------------|
|text|content|---------------|
|bigint|app_id|null: false|
|boolean|my_contact|default: false|


### lettersテーブル
|Column|Type| Options |
|:---|:---|:---|
|float|body_temperature|テーブルを表示したい|
|string|content|テーブルを表示したい|
|integer|post_id|null: false|
|integer|app_id|null: false|
|datetime|created_at|precision: 6, null: false|
|datetime|updated_at|precision: 6, null: false|


### menusテーブル
|Column|Type| Options |
|:---|:---|:---|
|string|title|---------------|
|text|app_id|---------------|
|string|image|---------------|
|text|snack_content|---------------|
|string|snack_image|---------------|
|datetime|created_at|precision: 6, null: false|
|datetime|updated_at|precision: 6, null: false|




### postsテーブル
|Column|Type| Options |
|:---|:---|:---|
|string|title|---------------|
|text|content|---------------|
|string|image|---------------|
|bigint|app_id|null: false|
|datetime|created_at|precision: 6, null: false|
|datetime|updated_at|precision: 6, null: false|



### saturday_applicationsテーブル
|Column|Type| Options |
|:---|:---|:---|
|time|start_time|---------------|
|string|title|default: "その他"|
|time|end_time|---------------|
|date|date|null: false|
|integer|app_id|---------------|
|datetime|created_at|precision: 6, null: false|
|datetime|updated_at|precision: 6, null: false|




### sawsテーブル
|Column|Type| Options |
|:---|:---|:---|
|integer|app_id|---------------|
|integer|post_id|---------------|
|datetime|created_at|precision: 6, null: false|
|datetime|updated_at|precision: 6, null: false|




### textsテーブル
|Column|Type| Options |
|:---|:---|:---|
|string|title|---------------|
|datetime|created_at|precision: 6, null: false|
|datetime|updated_at|precision: 6, null: false|



### welcom_timesテーブル
|Column|Type| Options |
|:---|:---|:---|
|string|name|---------------|
|datetime|time|---------------|
|datetime|created_at|precision: 6, null: false|
|datetime|updated_at|precision: 6, null: false|

### wordsテーブル
|Column|Type| Options |
|:---|:---|:---|
|string|Myfile|---------------|
|string|title|---------------|
|integer|filename|---------------|
|integer|comment|---------------|
|datetime|created_at|precision: 6, null: false|
|datetime|updated_at|precision: 6, null: false|

# 実装ページ

- topページ :  ＊ /app/views/posts

- 管理者画面 : * /app/admin

- コンタクトページ : * /app/views/contacts


- 献立ページ : * /app/views/menus


- 欠席届けページ : * /app/views/absences


- 土曜申請届けページ : * /app/views/saturday_applications

- プロフィール設定 : * /app/views/my_pages

- 返信（家庭での様子） : * /app/views/letters




# 使用したgem

```bash
・ "Devise-i18n"
・ "jquery-rails"
・ "Activeadmin"
・ "Mini_magick"
・ "pry-byebug"
```

