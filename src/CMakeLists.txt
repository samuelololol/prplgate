add_library(${PROJECT_NAME} SHARED
        prplgate.cpp
)

target_link_libraries(${PROJECT_NAME} PRIVATE
        xml2
        ZLIB::ZLIB
        purple)