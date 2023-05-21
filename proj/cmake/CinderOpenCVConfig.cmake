include(CMakePrintHelpers)
if( NOT TARGET CinderOpenCV )
	get_filename_component( CinderOpenCV_INCLUDE_PATH "${CMAKE_CURRENT_LIST_DIR}/../../include" ABSOLUTE )
	get_filename_component( CINDER_PATH "${CMAKE_CURRENT_LIST_DIR}/../../../.." ABSOLUTE )
	
	list(APPEND CMAKE_MODULE_PATH "${CMAKE_CURRENT_LIST_DIR}")
	
	find_package(OpenCV REQUIRED )
	
	list(APPEND CinderOpenCV_INCLUDES 
		${OpenCV_INCLUDE_DIRS}
		${CinderOpenCV_INCLUDE_PATH}
	)

	list(APPEND CinderOpenCV_LIBRARIES
		${OpenCV_LIBS}
	)

	
	if( NOT TARGET cinder )
		    include( "${CINDER_PATH}/proj/cmake/configure.cmake" )
		    find_package( cinder REQUIRED PATHS
		        "${CINDER_PATH}/${CINDER_LIB_DIRECTORY}"
		        "$ENV{CINDER_PATH}/${CINDER_LIB_DIRECTORY}" )
	endif()
	
endif()



