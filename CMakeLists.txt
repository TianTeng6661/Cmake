#注：此处TestDemo为我编译的静态库名字，需要替换
#DROOT是系统变量，主要指定头文件和链接库的路径 此处可替换成自己对应路径

cmake_minimum_required(VERSION 3.2)
project (TestDemo C CXX)

MESSAGE( STATUS "CMAKE_CXX_FLAGS: " ${CMAKE_CXX_FLAGS} )
# 工程名
set(PROJECT_NAME TestDemo)

# 源文件
# aux_source_directory为包含指定目录下所有的源文件
# 若不需要包含所有的源文件，则使用set定义，如：set(SRC_FILES 1.cpp 2.cpp)
# aux_source_directory(. SRC_FILES)
set(SRC_FILES
    CXX.cpp)

# 头文件
# 若指定多个目录，使用空格分隔 .表示当前项目路径
include_directories($ENV{DROOT}/inc .)


# 编译时链接路径 此处对不同架构时的链接路径做了一些处理（如果不需要链接其他库可以注释掉）
if(${ARCHS} STREQUAL "arm64")
    set(LIB_DIR ios_arm64_r)
elseif(${ARCHS} STREQUAL "armv7")
    set(LIB_DIR ios_armv7_r)
elseif(${ARCHS} STREQUAL "armv7s")
    set(LIB_DIR ios_armv7s_r)
elseif(${ARCHS} STREQUAL "i386")
    set(LIB_DIR ios_i386_r)
elseif(${ARCHS} STREQUAL "x86_64")
    set(LIB_DIR ios_x86_64_r)
endif()
    link_directories($ENV{DROOT}/bin/${LIB_DIR})

# 生成目标 STATIC和ARCHIVE对应静态库 SHARED和LIBRARY对应动态库
    add_library(${PROJECT_NAME} STATIC ${SRC_FILES})

# 链接/安装
    target_link_libraries(${PROJECT_NAME}  pthread dl)
