cmake_minimum_required(VERSION 3.10)

project(rtc_base)
include_directories(${PROJECT_SOURCE_DIR}/ksconfig.h)
include_directories(${PROJECT_SOURCE_DIR}/absl)
include_directories(${PROJECT_SOURCE_DIR}/api)
include_directories(${PROJECT_SOURCE_DIR}/audio)
include_directories(${PROJECT_SOURCE_DIR}/common_audio)
include_directories(${PROJECT_SOURCE_DIR}/modules)
include_directories(${PROJECT_SOURCE_DIR}/rtc_base)
include_directories(${PROJECT_SOURCE_DIR}/system_wrappers)


file(GLOB SRC_FILESI ${PROJECT_SOURCE_DIR}/strings/*.cc)
file(GLOB SRC_FILESII ${PROJECT_SOURCE_DIR}/*.cc)
file(GLOB SRC_FILESIII ${PROJECT_SOURCE_DIR}/system/*.cc)
add_library(librtcbase ${SRC_FILESI} ${SRC_FILESII} ${SRC_FILESIII})
set_target_properties(librtcbase PROPERTIES OUTPUT_NAME "rtcbase")
install(TARGETS librtcbase
        DESTINATION ${CMAKE_INSTALL_PREFIX}
        )