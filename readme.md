# gopherjs安装
    go get -u github.com/gopherjs/gopherjs
# 搭建wasm项目
    我的wasm放在/web/go/wasm目录
    cp $(go env GOROOT)/misc/wasm/wasm_exec.{html,js} /web/go/wasm
# 编译为wasm文件
    GOARCH=wasm GOOS=js go build -o test.wasm app.go
    直接执行sh bin/app-build.sh
    $ sh bin/app-build.sh 
    cmd/go: unsupported GOOS/GOARCH pair js/amd64
    build wasm success!

# 开始运行
    go run main.go
    访问localhost:8080/index.html
    点击run，查看控制台打印
# nodejs运行
    time node public/wasm_exec.js public/test.wasm
    exec success
    
    real	0m1.158s
    user	0m3.031s
    sys	0m0.124s

