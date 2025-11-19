cmake_minimum_required(VERSION 3.22.1)

project(cmake-exercise)

set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

# Find all required packages
find_package(deal.II REQUIRED)
find_package(Boost REQUIRED COMPONENTS filesystem)
find_package(yaml-cpp REQUIRED)

deal_ii_initialize_cached_variables()

# Include directories
#include_directories(${CMAKE_CURRENT_SOURCE_DIR}/fem)
#include_directories(${Boost_INCLUDE_DIRS})
#include_directories(${YAML_CPP_INCLUDE_DIR})

# Executable
add_executable(${PROJECT_NAME} 
	main.cpp 
	fem/fem.cpp 
	flatset/flatset.cpp
	filesystem/filesystem.cpp
	yamlParser/yamlParser.cpp)

deal_ii_setup_target(${PROJECT_NAME})

# link boost filesystem
target_link_libraries(${PROJECT_NAME} ${Boost_FILESYSTEM_LIBRARY})

# link yaml-cpp
target_link_libraries(${PROJECT_NAME} yaml-cpp)