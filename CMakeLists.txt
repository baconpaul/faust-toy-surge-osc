cmake_minimum_required(VERSION 3.10)

set(CMAKE_OSX_DEPLOYMENT_TARGET 10.11 CACHE STRING "Build for 10.11")

set(CMAKE_CXX_STANDARD 14)

project(faust-toy-surge-osc VERSION 0.9.0 LANGUAGES CXX)

add_custom_target(run-faust
        BYPRODUCTS ${CMAKE_BINARY_DIR}/basicOsc.cpp ${CMAKE_BINARY_DIR}/justASin.cpp
        DEPENDS faust-code/basicOsc.dsp architecture/toy-surge-arch.cpp
        WORKING_DIRECTORY ${CMAKE_SOURCE_DIR}
        COMMAND faust -vec -clang -cn basicOsc -a architecture/toy-surge-arch.cpp faust-code/basicOsc.dsp -i -o ${CMAKE_BINARY_DIR}/basicOsc.cpp
        COMMAND faust -vec -clang -cn justASin -a architecture/toy-surge-arch.cpp faust-code/justASin.dsp -i -o ${CMAKE_BINARY_DIR}/justASin.cpp
        )

add_executable(ftso src/main.cpp
        ${CMAKE_BINARY_DIR}/basicOsc.cpp
        ${CMAKE_BINARY_DIR}/justASin.cpp
        )
