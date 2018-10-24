# CMake entry point
cmake_minimum_required (VERSION 3.0)
project (GLTutorials)


find_package(OpenGL REQUIRED)


if( CMAKE_BINARY_DIR STREQUAL CMAKE_SOURCE_DIR )
	message( FATAL_ERROR "Please select another Build Directory ! (and give it a clever name, like bin_Visual2012_64bits/)" )
endif()
if( CMAKE_SOURCE_DIR MATCHES " " )
	message( "Your Source Directory contains spaces. If you experience problems when compiling, this can be the cause." )
endif()
if( CMAKE_BINARY_DIR MATCHES " " )
	message( "Your Build Directory contains spaces. If you experience problems when compiling, this can be the cause." )
endif()


# Compile external dependencies 
add_subdirectory (../libraries/external external)

# On Visual 2005 and above, this module can set the debug working directory
cmake_policy(SET CMP0026 OLD)


include_directories(
		../libraries/external/AntTweakBar-1.16/include/
		../libraries/external/glfw-3.1.2/include/GLFW/
		../libraries/external/glm-0.9.7.1/
		../libraries/external/glew-1.13.0/include/
		../libraries/external/assimp-3.0.1270/include/
		src
)


set(ALL_LIBS
		${OPENGL_LIBRARY}
		glfw
		GLEW_1130
		)

add_definitions(
		-DTW_STATIC
		-DTW_NO_LIB_PRAGMA
		-DTW_NO_DIRECT3D
		-DGLEW_STATIC
		-D_CRT_SECURE_NO_WARNINGS
)

#FILE(GLOB SRC_FILES "source/*.hlsl")

set_source_files_properties(${SRC_FILES} PROPERTIES VS_TOOL_OVERRIDE "None")

# Example 1
add_executable(triangle
		${SRC_FILES}
		source/example1/example1.cpp
		source/example1/Triangle.cpp
		source/example1/SimpleFragmentShader.hlsl
		source/example1/SimpleVertexShader.hlsl
		../libraries/common/objloader.cpp
		../libraries/common/objloader.hpp
		../libraries/common/controls.cpp
		../libraries/common/controls.hpp
		../libraries/common/shader.cpp
		../libraries/common/shader.hpp
		../libraries/common/texture.cpp
		../libraries/common/texture.hpp
		../libraries/common/vboindexer.cpp
		../libraries/common/vboindexer.hpp
		source/example1/Triangle.cpp source/example1/Triangle.h)

# working directories
set_target_properties(triangle PROPERTIES COMPILE_DEFINITIONS "USE_ASSIMP")
target_link_libraries(triangle
		${ALL_LIBS}
		assimp
		)

set_target_properties(triangle PROPERTIES XCODE_ATTRIBUTE_CONFIGURATION_BUILD_DIR "source/example1/")

#message(${CMAKE_GENERATOR})
if(NOT ${CMAKE_GENERATOR} STREQUAL "Xcode")
	add_custom_command(
			TARGET triangle POST_BUILD
			COMMAND ${CMAKE_COMMAND} -E copy "${CMAKE_CURRENT_BINARY_DIR}/${CMAKE_CFG_INTDIR}/triangle${CMAKE_EXECUTABLE_SUFFIX}" "../"
			COMMENT "Copying triangle files..."

	)
endif()


SOURCE_GROUP(common REGULAR_EXPRESSION ".*/common/.*" )
SOURCE_GROUP(shaders REGULAR_EXPRESSION ".*/.*hlsl*" )


 