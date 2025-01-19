#### 全件検索
```
select * from user;
```
#### 特定カラムのみ検索
```
select name, age from user;
```
#### 条件検索
```
select * from user where id = 1;
```
#### 候補指定での条件検索 (IN句)
```
select * from user where age in (30,40);
```
#### 範囲指定での条件検索 (BETWEEN句)
```
select * from user where age between 30 and 40;
```
#### パターンマッチング (LIKE演算子)
- _：任意の１文字
- %：任意の０文字以上の文字列
```
select * from user where age like "3_";
select * from user where phone like "090-%";
```
#### レコードの並び替え (ORDER BY句)
デフォルト：asc
```
select * from user order by age desc;
```
#### 重複を除外して取得
```
select distinct country from user;
```
#### データのグループ化
country によってグループ化し、それぞれのレコード数をカウント
```
select country, count(country) as count from user group by country;
```
#### グループ化して集計した結果に対して絞り込む
country によってグループ化し、値が "japan" のレコード数をカウント
```
select country, count(country) as count from user group by country having country = "japan";
```
