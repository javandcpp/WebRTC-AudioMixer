cmake_minimum_required(VERSION 3.10)

set(WEBRTC_MAC 0)

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

file(GLOB HEADER_FILES1 ${PROJECT_SOURCE_DIR}/*.h)
file(GLOB HEADER_FILES2 ${PROJECT_SOURCE_DIR}/numerics/*.h)
file(GLOB HEADER_FILES3 ${PROJECT_SOURCE_DIR}/strings/*.h)
file(GLOB HEADER_FILES4 ${PROJECT_SOURCE_DIR}/synchronization/*.h)
file(GLOB HEADER_FILES5 ${PROJECT_SOURCE_DIR}/system/*.h)
file(GLOB HEADER_FILES6 ${PROJECT_SOURCE_DIR}/units/*.h)

add_library(librtcbase ${SRC_FILESI} ${SRC_FILESII} ${SRC_FILESIII})
set_target_properties(librtcbase PROPERTIES OUTPUT_NAME "rtcbase")
install(TARGETS librtcbase
        DESTINATION ${CMAKE_INSTALL_PREFIX}
        )

install(FILES ${HEADER_FILES1} DESTINATION include/rtc_base)
install(FILES ${HEADER_FILES2} DESTINATION include/rtc_base/numerics)
install(FILES ${HEADER_FILES3} DESTINATION include/rtc_base/strings)
install(FILES ${HEADER_FILES4} DESTINATION include/rtc_base/synchronization)
install(FILES ${HEADER_FILES5} DESTINATION include/rtc_base/system)
install(FILES ${HEADER_FILES6} DESTINATION include/rtc_base/units)