cmake_minimum_required(VERSION 3.10)

project(audio)
include_directories(${PROJECT_SOURCE_DIR}/ksconfig.h)


file(GLOB SRC_FILES ${PROJECT_SOURCE_DIR}/utility/*.cc)
file(GLOB HEADER_FILES ${PROJECT_SOURCE_DIR}/utility/*.h)

add_library(libaudio ${SRC_FILES})
set_target_properties(libaudio PROPERTIES OUTPUT_NAME "audio")
install(TARGETS libaudio
        DESTINATION ${CMAKE_INSTALL_PREFIX}
        )

install(FILES ${HEADER_FILES} DESTINATION include/audio/utility)