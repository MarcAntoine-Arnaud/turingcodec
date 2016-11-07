cmake_minimum_required(VERSION 2.8)
project (turing)

if(UNIX)
    SET(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++14")
endif()

SET(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -xavx")

if (USE_SYSTEM_BOOST)
else()
    add_subdirectory (boost)
endif()
add_subdirectory (havoc)
add_subdirectory (turing)
