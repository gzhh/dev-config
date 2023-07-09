# Setting system
export LANG="en_US.UTF-8"

alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'


# Setting proxy
# export http_proxy="http://127.0.0.1:1080"
# export https_proxy="http://127.0.0.1:1080"
# Socks5 proxy
alias proxy='export all_proxy=socks5://127.0.0.1:1080'
alias unproxy='unset all_proxy'


# Setting nvim
alias vim='nvim'
alias vi='nvim'


# Setting Python
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.11/bin:${PATH}"


# Setting Golang
source "$HOME/.go/env"
# Setting Go Modules Proxy
export GOPROXY=https://goproxy.cn,direct
# export GOPROXY=https://goproxy.io,direct
# export GOPROXY=https://mirrors.aliyun.com/goproxy/,direct

# 通过 GOPRIVATE 控制私有库不走代理
# GOPRIVATE=*.gitlab.com,*.gitee.com
# GOPRIVATE=gitlab.your_orgnazation.com/your_repo

# Set local RUN_MODE
export RUN_MODE=dev


# Set kubectl
export PATH="/usr/local/opt/kubernetes-cli@1.22/bin:$PATH"
# Set kubectl completion zsh
# Ref: https://kubernetes.io/zh/docs/tasks/tools/install-kubectl-macos/
source <(kubectl completion zsh)

