#### 1、编译测试用例

1.1、交叉编译

```shell
$ cd <root-dir>
$ mkdir -p build-aarch64-linux-gnu
$ cd build-aarch64-linux-gnu
$ cmake -DCMAKE_TOOLCHAIN_FILE=../toolchains/aarch64-linux-gnu.toolchain.cmake ..
$ make -j$(nproc)
```

1.2 本地编译

```shell
$ cd <root-dir>
$ mkdir -p build
$ cd build
$ cmake ..
$ make -j$(nproc)
```

#### 2、tf库交叉编译

​	编译好的tensorflow库文件及其外部依赖已经放在仓库中，见目录，如需自己编译见doc/tf_build_for_aarch64.md


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
│   ├── tf_build_for_arm64.md
│   ├── configfile
│   └── pic
├── include
│   └── tensorflow 								# tf头文件
├── lib	
│   └── tensorflow 								# tf库文件
├── readme.md
├── src
│   ├── CMakeLists.txt
│   ├── tf_env.cpp 								# 环境测试用例
│   └── tf_minist.cpp
├── thirdParty 									# tensorflow外部依赖
│   ├── eigen3
│   └── protobuf
└── toolchains 									# 交叉编译工具配置
    └── aarch64-linux-gnu.toolchain.cmake
```

#### 4、如何集成到自己的工程

```
1、包含tensorflow头文件
├── include
│   └── tensorflow 								# tf头文件
2、链接tensorflow库文件
├── lib	
│   └── tensorflow 								# tf库文件
3、集成tensorflow第三方库
├── thirdParty 									# tensorflow外部依赖
│   ├── eigen3
│   └── protobuf
```

#### 参考

https://github.com/xifengcun/tensorflow-aarch64-crossbuild

https://github.com/zhangcliff/tensorflow-c-mnist