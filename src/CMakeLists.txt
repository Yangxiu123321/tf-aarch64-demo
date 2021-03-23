
# !!!NO PLATFORM CHECK
# !!!NO Config

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11 -fPIC -O3 -ggdb -Wall -finline-functions -Wl,--allow-multiple-definition -Wl,--whole-archive")

set(tf_ROOT ${CMAKE_CURRENT_LIST_DIR}/../include/tensorflow)
set(tf_thirdParty_INCLUDE_DIR ${CMAKE_CURRENT_LIST_DIR}/../thirdParty/proto
                  ${CMAKE_CURRENT_LIST_DIR}/../thirdParty/protobuf-host/include
                  ${CMAKE_CURRENT_LIST_DIR}/../thirdParty/eigen
                  ${CMAKE_CURRENT_LIST_DIR}/../thirdParty/nsync/public
                  ${CMAKE_CURRENT_LIST_DIR}/../thirdParty/absl)
set(tf_thirdParty_LIBRARIES
    ${CMAKE_CURRENT_LIST_DIR}/../thirdParty/protobuf-host/lib/libprotobuf.a
    ${CMAKE_CURRENT_LIST_DIR}/../thirdParty/nsync/builds/libnsync.a
    pthread m z dl
)
set(tf_INCLUDE_DIRS ${tf_ROOT} 
                    ${tf_thirdParty_INCLUDE_DIR})
set(tf_LIBRARIES ${CMAKE_CURRENT_LIST_DIR}/../lib/tensorflow/libtensorflow-core.a ${tf_thirdParty_LIBRARIES})



set(protobuf_INCLUDE_DIRS ${CMAKE_CURRENT_LIST_DIR}/../thirdParty/protobuf/include)
set(protobuf_LIBRARIES ${CMAKE_CURRENT_LIST_DIR}/../thirdParty/protobuf/lib/libprotobuf.a)

macro(tf_add_example name)
    add_executable(${name} ${name}.cpp)
    target_include_directories(${name} PRIVATE ${tf_INCLUDE_DIRS})
    target_link_libraries(${name} PRIVATE ${tf_LIBRARIES})
endmacro()

tf_add_example(tf_env)
#tf_add_example(tf_add)
#tf_add_example(tf_minist)
