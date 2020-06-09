# under_maintenance_server

静的な JSON を返すだけの HTTP サーバ。環境変数 `PORT` で指定されたポートを listen する。

## ローカルで動かす
```sh
$ make run
$ curl http://localhost:8080
```

## Docker イメージをビルドする
```sh
$ make build
```
