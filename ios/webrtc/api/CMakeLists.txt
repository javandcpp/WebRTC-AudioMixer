cmake_minimum_required(VERSION 3.10)

project(api)
message(-->>${CMAKE_CURRENT_SOURCE_DIR})
include_directories(${PROJECT_SOURCE_DIR}/../ksconfig.h)
#include_directories(${PROJECT_SOURCE_DIR}/absl)
include_directories(${PROJECT_SOURCE_DIR})
#include_directories(${PROJECT_SOURCE_DIR}/../api)
#include_directories(${PROJECT_SOURCE_DIR}/audio)
#include_directories(${PROJECT_SOURCE_DIR}/units)
#include_directories(${PROJECT_SOURCE_DIR}/video)
#include_directories(${PROJECT_SOURCE_DIR}/common_audio)
#include_directories(${PROJECT_SOURCE_DIR}/modules)
#include_directories(${PROJECT_SOURCE_DIR}/rtc_base)
#include_directories(${PROJECT_SOURCE_DIR}/system_wrappers)

file(GLOB ALLHEADERS ${PROJECT_SOURCE_DIR}/)
include_directories(${ALLHEADERS})

file(GLOB API_SRC ${PROJECT_SOURCE_DIR}/audio/audio_frame.cc)
add_library(libapi STATIC ${API_SRC})

set_target_properties(libapi PROPERTIES OUTPUT_NAME "api")
install(TARGETS libapi
        DESTINATION ${CMAKE_INSTALL_PREFIX}
        )