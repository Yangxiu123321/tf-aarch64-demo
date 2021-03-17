
# !!!NO PLATFORM CHECK
# !!!NO Config

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11")
set(tf_ROOT ${CMAKE_CURRENT_LIST_DIR}/../include/tensorflow)
set(tf_INCLUDE_DIRS ${tf_ROOT}
                    ${tf_ROOT}/bazel-genfiles
                    ${tf_ROOT}/bazel-bin/tensorflow)
set(tf_LIBRARIES ${CMAKE_CURRENT_LIST_DIR}/../lib/tensorflow/libtensorflow_cc.so  ${CMAKE_CURRENT_LIST_DIR}/../lib/tensorflow/libtensorflow_framework.so)

set(protobuf_INCLUDE_DIRS ${CMAKE_CURRENT_LIST_DIR}/../thirdParty/protobuf/include)
set(protobuf_LIBRARIES ${CMAKE_CURRENT_LIST_DIR}/../thirdParty/protobuf/lib/libprotobuf.a)

set(eigen3_INCLUDE_DIRS ${CMAKE_CURRENT_LIST_DIR}/../thirdParty/eigen3)

macro(tf_add_example name)
    add_executable(${name} ${name}.cpp)
    target_include_directories(${name} PRIVATE ${tf_INCLUDE_DIRS} ${protobuf_INCLUDE_DIRS} ${eigen3_INCLUDE_DIRS})
    target_link_libraries(${name} PRIVATE ${tf_LIBRARIES} ${protobuf_LIBRARIES})
endmacro()

tf_add_example(tf_env)
#tf_add_example(tf_minist)
