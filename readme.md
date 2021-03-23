#### 1、说明

这个分支有用参考信息的只是目录结构、CMakeLists.txt、和打包脚本.pack.sh。其他的文档信息参考master分支 

#### 2、目录结构

```
.
├── build
│   ├── CMakeCache.txt
│   ├── CMakeFiles
│   ├── cmake_install.cmake
│   ├── Makefile
│   └── src
├── CMakeLists.txt
├── doc
│   ├── configfile
│   ├── pic
│   └── tf_build_for_aarch64.md			# 最新见master
├── include
│   └── tensorflow
├── lib
│   └── tensorflow
├── pack.sh								# 用于整理tensorflow编译完的头文件和库文件
├── readme.md
├── release
├── src
│   ├── CMakeLists.txt
│   ├── tf_add.cpp
│   ├── tf_env.cpp
│   └── tf_minist.cpp
├── thirdParty
│   ├── absl
│   ├── eigen
│   ├── nsync
│   ├── proto
│   └── protobuf-host
└── toolchains
    └── aarch64-linux-gnu.toolchain.cmake

```

