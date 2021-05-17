cmake_minimum_required(VERSION 3.10)

project(systemwrappers)
include_directories(${PROJECT_SOURCE_DIR}/ksconfig.h)
include_directories(${PROJECT_SOURCE_DIR}/absl)
include_directories(${PROJECT_SOURCE_DIR}/api)
include_directories(${PROJECT_SOURCE_DIR}/audio)
include_directories(${PROJECT_SOURCE_DIR}/common_audio)
include_directories(${PROJECT_SOURCE_DIR}/modules)
include_directories(${PROJECT_SOURCE_DIR}/rtc_base)
include_directories(${PROJECT_SOURCE_DIR}/system_wrappers)


file(GLOB SRC_FILES ${PROJECT_SOURCE_DIR}/source/*.cc)
file(GLOB HEADER_FILES ${PROJECT_SOURCE_DIR}/include/*.h)

add_library(libsyswrappters ${SRC_FILES})
set_target_properties(libsyswrappters PROPERTIES OUTPUT_NAME "sys_wrappers")
install(TARGETS libsyswrappters
        DESTINATION ${CMAKE_INSTALL_PREFIX}
        )

install(FILES ${HEADER_FILES} DESTINATION include/system_wrappers/include)       