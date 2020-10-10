# DynamoDB local sample
DynamoDB localを使ってLambda x DynamoDBのテストを書きたくて色々調査した際のまとめです。
docker-composeを使ってDynamoDB localを起動し、そこにテーブル作成とデータ投入を行う処理を入れています

## 環境
- Docker: v19.03.13
- docker-compose: v1.27.4

## 仕様
以下2つのコンテナを起動し、AWS CLIを使ってテストに必要なテーブルやデータ投入を行う。

DynamoDB localにテスト用データを投入するためにプログラムを書くのは面倒なのでAWS CLI用のコンテナを起動して、そこからAWS CLIコマンドを使ってデータの投入などをしている。

- DynamoDB local
- AWS CLI
    - DynamoDB localにテーブル作成やデータ投入を行うためのコンテナ

今回は `SampleTable`という名前のテーブルを作成し、Primary partition keyはuserId、Primary sort keyはuserNameとしている。

## セットアップ
- `docker-compose up`
    - DynamoDB localとAWS CLIの環境を構築する
- `./bin/main.sh`
    - AWS CLI経由でDynamoDB localにテーブル作成やデータを投入

## 参考にした情報
- [Docker ComposeでDynamoDB Localを立ち上げる](https://blog.ri52dksla.dev/posts/2020_05_09_dynamodb_local_docker_compose/)
- [DynamoDB local のあれこれ](https://developers.freee.co.jp/entry/dynamodb-local)

