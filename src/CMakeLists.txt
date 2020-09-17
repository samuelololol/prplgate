add_library(${PROJECT_NAME} SHARED
        prplgate.c
)

target_include_directories(${PROJECT_NAME} PRIVATE
        ${PURPLE_INCLUDE_DIRS}
        ${GLIB_PKG_INCLUDE_DIRS}
        internal.h
        )

target_link_libraries(${PROJECT_NAME} PRIVATE
        ${LibXml2_LIBRARIES}
        ${ZLIB_LIBRARIES}
        ${GLIB_PKG_LIBRARIES}
        ${PURPLE_LIBRARIES}
        )