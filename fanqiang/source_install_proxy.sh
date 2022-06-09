#export all_proxy="socks5://127.0.0.1:78"
ip=127.0.0.1
port=7890


export http_proxy=http://${ip}:${port}
export https_proxy=http://${ip}:${port}
export no_proxy="localhost, 127.0.0.1"

