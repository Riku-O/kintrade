# エラーが発生するとスクリプトが終了される
set -e

# Railsのserver.pidファイルが存在している場合に削除する
rm -f /myapp/tmp/pids/server.pid

# DockerfileのCMDにセットしたすべてのコマンド(Railsサーバーの起動)を実行する
exec "$@"
