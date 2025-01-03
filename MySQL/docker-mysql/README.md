### 実行手順
- docker-compose.yml ファイルがあるディレクトリに移動し、以下のコマンドでコンテナを作成
```
$ docker-compose up 
```

- 起動したコンテナにログイン
```
$ docker exec -it docker-mysql_db_1 bash -p
```

- MySQLを起動
```
$ mysql -u root -p -h 127.0.0.1
```

- 使用するデータベースの選択
```
mysql> use mydatabase;
```

- テーブル定義の確認
```
mysql> desc user;
```

- userテーブルの初期データの確認
```
mysql> select * from user;
```
