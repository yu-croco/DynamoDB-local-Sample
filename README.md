# DynamoDB local sample
DynamoDB localを使ってLambda x DynamoDBのテストを書きたくて色々調査した際のまとめです。
docker-composeを使ってDynamoDB localを起動し、そこにテーブル作成とデータ投入を行う処理を入れています

## 環境
- Docker: v19.03.13
- docker-compose: v1.27.4

## 仕様
以下2つのコンテナを起動し、AWS CLIを使ってテストに必要なテーブルやデータ投入を行う。
- DynamoDB local
- AWS CLI
    - DynamoDB localにテーブル作成やデータ投入を行うためのコンテナ

今回は `SampleTable`という名前のテーブルを作成し、Primary partition keyはuserId、Primary sort keyはuserNameとしている。

## セットアップ
- `docker-compose up`
  - `SampleTable`という名前のDynamoDBテーブルを作成し、そこにテストデータを投入します

## 参考にした情報
- []()
- []()
- []()
