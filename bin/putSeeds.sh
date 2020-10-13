#!/usr/bin/env bash

aws dynamodb batch-write-item \
  --region ap-northeast-1 \
  --endpoint-url http://dynamodb:8000 \
  --request-items file://seeds/sample_table.json
