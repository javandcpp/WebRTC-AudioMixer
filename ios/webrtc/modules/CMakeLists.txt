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
file(GLOB SRC_FILES_II ${PROJECT_SOURCE_DIR}/audio_processing/agc2/*.cc)
file(GLOB SRC_FILES_III ${PROJECT_SOURCE_DIR}/audio_processing/include/*.cc)
file(GLOB SRC_FILES_IIII ${PROJECT_SOURCE_DIR}/audio_processing/logging/*.cc)
add_library(libmodules STATIC ${SRC_FILES_I} ${SRC_FILES_II} ${SRC_FILES_III} ${SRC_FILES_IIII})


file(GLOB HEADER_FILES ${PROJECT_SOURCE_DIR}/audio_mixer/*.h)
file(GLOB HEADER_FILES2 ${PROJECT_SOURCE_DIR}/audio_processing/agc2/*.h)
file(GLOB HEADER_FILES3 ${PROJECT_SOURCE_DIR}/audio_processing/include/*.h)
file(GLOB HEADER_FILES4 ${PROJECT_SOURCE_DIR}/audio_processing/logging/*.h)


set_target_properties(libmodules PROPERTIES OUTPUT_NAME "modules")
install(TARGETS libmodules
        DESTINATION ${CMAKE_INSTALL_PREFIX}
        )

install(FILES ${HEADER_FILES} DESTINATION include/modules/audio_mixer)
install(FILES ${HEADER_FILES2} DESTINATION include/modules/audio_processing/agc2)
install(FILES ${HEADER_FILES3} DESTINATION include/modules/audio_processing/include)
install(FILES ${HEADER_FILES4} DESTINATION include/modules/audio_processing/logging)