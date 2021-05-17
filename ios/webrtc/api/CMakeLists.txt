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

file(GLOB HEADER_FILES1 ${PROJECT_SOURCE_DIR}/*.h)
file(GLOB HEADER_FILES2 ${PROJECT_SOURCE_DIR}/audio/*.h)
file(GLOB HEADER_FILES3 ${PROJECT_SOURCE_DIR}/units/*.h)
file(GLOB HEADER_FILES4 ${PROJECT_SOURCE_DIR}/video/*.h)



include_directories(${ALLHEADERS})

file(GLOB API_SRC ${PROJECT_SOURCE_DIR}/audio/*.cc)
add_library(libapi STATIC ${API_SRC})

set_target_properties(libapi PROPERTIES OUTPUT_NAME "api")
install(TARGETS libapi
        DESTINATION ${CMAKE_INSTALL_PREFIX}
        )

install(FILES ${HEADER_FILES1} DESTINATION include/api/)
install(FILES ${HEADER_FILES2} DESTINATION include/api/audio)
install(FILES ${HEADER_FILES3} DESTINATION include/api/units)
install(FILES ${HEADER_FILES4} DESTINATION include/api/video)