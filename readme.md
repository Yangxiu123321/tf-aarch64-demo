#### 1、编译

```shell
$ cd <root-dir>
$ mkdir -p build-aarch64-linux-gnu
$ cd build-aarch64-linux-gnu
$ cmake -DCMAKE_TOOLCHAIN_FILE=../toolchains/aarch64-linux-gnu.toolchain.cmake ..
$ make -j$(nproc)
```

#### 2、tf库编译

见doc

#### 3、目录

```
mod@mod aarch64-tensorflow-example git:[master] $ tree -L 2
.
├── build
│   ├── CMakeCache.txt
│   ├── CMakeFiles
│   ├── cmake_install.cmake
│   ├── Makefile
│   └── src
├── CMakeLists.txt
├── doc
│   ├── build_for_arm64.md
│   ├── configfile
│   └── pic
├── include
│   └── tensorflow # tf头文件
├── lib	
│   └── tensorflow # tf库文件
├── readme.md
├── src
│   ├── CMakeLists.txt
│   ├── tf_env.cpp # 环境测试用例
│   └── tf_minist.cpp
├── thirdParty # tensorflow外部依赖
│   ├── eigen3
│   └── protobuf
└── toolchains #交叉编译工具配置
    └── aarch64-linux-gnu.toolchain.cmake

```

#### 参考

https://github.com/xifengcun/tensorflow-aarch64-crossbuild

https://github.com/zhangcliff/tensorflow-c-mnist