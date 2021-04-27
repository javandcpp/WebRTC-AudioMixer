cmake_minimum_required(VERSION 3.10)

set(CMAKE_CXX_STANDARD 14)
add_definitions(-std=c++11)
#add_definitions(-DWEBRTC_LINUX)
add_definitions(-DWEBRTC_MAC -DWEBRTC_POSIX -DWEBRTC_APM_DEBUG_DUMP=0)

#add_definitions(-DWEBRTC_POSIX -DWEBRTC_APM_DEBUG_DUMP=0)
#add_definitions(-D -fno-rtti)

project(webrtc)



include_directories(${PROJECT_SOURCE_DIR})
include_directories(${PROJECT_SOURCE_DIR}/rtc_base)

add_subdirectory(api)
add_subdirectory(audio)
add_subdirectory(common_audio)
add_subdirectory(modules)
add_subdirectory(rtc_base)
add_subdirectory(system_wrappers)

