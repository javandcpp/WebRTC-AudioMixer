cmake_minimum_required(VERSION 3.10)

set(CMAKE_CXX_STANDARD 14sudo)

add_definitions(-std=c++11 -DWEBRTC_POSIX -DWEBRTC_IOS -DWEBRTC_ARCH_ARM -DWEBRTC_APM_DEBUG_DUMP=0 -DABSL_USES_STD_STRING_VIEW)



project(webrtc)



include_directories(${PROJECT_SOURCE_DIR})
include_directories(${PROJECT_SOURCE_DIR}/rtc_base)

add_subdirectory(api)
add_subdirectory(audio)
add_subdirectory(common_audio)
add_subdirectory(modules)
add_subdirectory(rtc_base)
add_subdirectory(system_wrappers)



