cmake_minimum_required(VERSION 3.10)

project(common_audio)
include_directories(${PROJECT_SOURCE_DIR}/ksconfig.h)
include_directories(${PROJECT_SOURCE_DIR}/absl)
include_directories(${PROJECT_SOURCE_DIR}/api)
include_directories(${PROJECT_SOURCE_DIR}/audio)
include_directories(${PROJECT_SOURCE_DIR}/common_audio)
include_directories(${PROJECT_SOURCE_DIR}/modules)
include_directories(${PROJECT_SOURCE_DIR}/rtc_base)
include_directories(${PROJECT_SOURCE_DIR}/system_wrappers)

file(GLOB SRC_FILES ${PROJECT_SOURCE_DIR}/*.cc)
add_library(libcommonaudio ${SRC_FILES})
set_target_properties(libcommonaudio PROPERTIES OUTPUT_NAME "common_audio")
install(TARGETS libcommonaudio
        DESTINATION ${CMAKE_INSTALL_PREFIX}
        )