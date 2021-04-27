cmake_minimum_required(VERSION 3.10)

#project(modules)

project(modules)
include_directories(${PROJECT_SOURCE_DIR}/ksconfig.h)
include_directories(${PROJECT_SOURCE_DIR}/absl)
include_directories(${PROJECT_SOURCE_DIR}/api)
include_directories(${PROJECT_SOURCE_DIR}/audio)
include_directories(${PROJECT_SOURCE_DIR}/common_audio)
include_directories(${PROJECT_SOURCE_DIR}/modules)
include_directories(${PROJECT_SOURCE_DIR}/rtc_base)
include_directories(${PROJECT_SOURCE_DIR}/system_wrappers)


file(GLOB SRC_FILES_I ${PROJECT_SOURCE_DIR}/audio_mixer/*.cc)
file(GLOB SRC_FILES_II ${PROJECT_SOURCE_DIR}/audio_processing/argc2/*.cc)
file(GLOB SRC_FILES_III ${PROJECT_SOURCE_DIR}/audio_processing/include/*.cc)
file(GLOB SRC_FILES_IIII ${PROJECT_SOURCE_DIR}/audio_processing/logging/*.cc)
add_library(libmodules STATIC ${SRC_FILES_I} ${SRC_FILES_II} ${SRC_FILES_III} ${SRC_FILES_IIII})

set_target_properties(libmodules PROPERTIES OUTPUT_NAME "modules")
install(TARGETS libmodules
        DESTINATION ${CMAKE_INSTALL_PREFIX}
        )