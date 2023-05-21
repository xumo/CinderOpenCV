cmake_minimum_required( VERSION 3.10 FATAL_ERROR )
set( CMAKE_VERBOSE_MAKEFILE ON )

project( OCV-ColorQuantize )

get_filename_component( CINDER_PATH "${CMAKE_CURRENT_SOURCE_DIR}/../../../../../.." ABSOLUTE )
get_filename_component( APP_PATH "${CMAKE_CURRENT_SOURCE_DIR}/../../" ABSOLUTE )

include( "${CINDER_PATH}/proj/cmake/modules/cinderMakeApp.cmake" )


ci_make_app(
	SOURCES     ${APP_PATH}/src/ocvColorQuantizeApp.cpp
	CINDER_PATH ${CINDER_PATH}
	BLOCKS		CinderOpenCV
)

add_custom_target(run
	COMMAND OCV-ColorQuantize 
	DEPENDS OCV-ColorQuantize
    WORKING_DIRECTORY ${CMAKE_PROJECT_DIR}
)
