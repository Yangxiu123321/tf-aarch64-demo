path_to_tensorflow=/home/mod/code/linux/nfs/tensorflow/tensorflow-1.10.0
your_project=/home/mod/code/linux/nfs/tensorflow/pack

cd ${your_project}
mkdir -p ./lib/tensorflow/include/tensorflow/contrib
mkdir -p ./lib/tensorflow/lib
mkdir -p ./lib/tensorflow/third_party

cp -r ${path_to_tensorflow}/tensorflow/cc ./lib/tensorflow/include/tensorflow
cp -r ${path_to_tensorflow}/tensorflow/core ./lib/tensorflow/include/tensorflow
cp -r ${path_to_tensorflow}/tensorflow/contrib/cloud ./lib/tensorflow/include/tensorflow/contrib

cp ${path_to_tensorflow}/tensorflow/contrib/makefile/gen/lib/libtensorflow-core.a ./lib/tensorflow/lib

cp -r ${path_to_tensorflow}/tensorflow/contrib/makefile/downloads/absl ./lib/tensorflow/third_party

cp -r ${path_to_tensorflow}/tensorflow/contrib/makefile/gen/proto ./lib/tensorflow/third_party

mkdir -p ./lib/tensorflow/third_party/protobuf-host
cp -r ${path_to_tensorflow}/tensorflow/contrib/makefile/gen/protobuf/include ./lib/tensorflow/third_party/protobuf-host
cp -r ${path_to_tensorflow}/tensorflow/contrib/makefile/gen/protobuf/lib ./lib/tensorflow/third_party/protobuf-host

mkdir -p ./lib/tensorflow/third_party/nsync/builds
cp -r ${path_to_tensorflow}/tensorflow/contrib/makefile/downloads/nsync/public ./lib/tensorflow/third_party/nsync
cp ${path_to_tensorflow}/tensorflow/contrib/makefile/downloads/nsync/build/libnsync.a ./lib/tensorflow/third_party/nsync/builds

cp -r ${path_to_tensorflow}/tensorflow/contrib/makefile/downloads/eigen ./lib/tensorflow/third_party
cp -r ${path_to_tensorflow}/third_party/eigen3 ./lib/tensorflow/third_party
