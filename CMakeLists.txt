cmake_minimum_required(VERSION 2.8.12)
project(onerabbit)

## Compile as C++11
add_compile_options(-std=c++11 -lrabbitmq -lrt -lssl -lamqpcpp -L<include/amqpcpp> -I/usr/include -L/usr/lib -lamqpcpp -Isrc)


## System dependencies are found with CMake's conventions
# find_package(Boost REQUIRED COMPONENTS system)


###########
## Build ##
###########


set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wall")
set(CMAKE_POSITION_INDEPENDENT_CODE ON)

add_library(
    amqpcpp
    SHARED
    include/AMQP.cpp
    include/AMQPBase.cpp
    include/AMQPException.cpp
    include/AMQPMessage.cpp
    include/AMQPExchange.cpp
    include/AMQPQueue.cpp
    include/AMQPcpp.h
)
target_include_directories(amqpcpp PUBLIC include/)

add_library(
    amqpcpp-static
    STATIC
    include/AMQP.cpp
    include/AMQPBase.cpp
    include/AMQPException.cpp
    include/AMQPMessage.cpp
    include/AMQPExchange.cpp
    include/AMQPQueue.cpp
    include/AMQPcpp.h

)

## Specify additional locations of header files
## Your package locations should be listed before other locations
include_directories(
# include
amqpcpp-static PUBLIC include
)

## Declare a C++ library
# add_library(${PROJECT_NAME}
#   src/${PROJECT_NAME}/onerabbit.cpp
# )

## Add cmake target dependencies of the library
## as an example, code may need to be generated before libraries
## either from message generation or dynamic reconfigure
# add_dependencies(${PROJECT_NAME} ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})

## Declare a C++ executable
## With catkin_make all packages are built within a single CMake context
## The recommended prefix ensures that target names across packages don't collide
add_executable(connect_test src/connect_test.cpp)
add_executable(send_test_message src/send_test_message.cpp)


## Rename C++ executable without prefix
## The above recommended prefix causes long target names, the following renames the
## target back to the shorter version for ease of user use
## e.g. "rosrun someones_pkg node" instead of "rosrun someones_pkg someones_pkg_node"
# set_target_properties(${PROJECT_NAME}_node PROPERTIES OUTPUT_NAME node PREFIX "")

## Add cmake target dependencies of the executable
## same as for the library above
# add_dependencies(${PROJECT_NAME}_node ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})

## Specify libraries to link a library or executable target against
target_link_libraries(connect_test
#${catkin_LIBRARIES}
amqpcpp rabbitmq ssl crypto
amqpcpp-static rabbitmq ssl crypto
amqpcpp rabbitmq ssl crypto
amqpcpp-static rabbitmq ssl crypto

 )

target_link_libraries(send_test_message
#${catkin_LIBRARIES}
amqpcpp rabbitmq ssl crypto
amqpcpp-static rabbitmq ssl crypto
amqpcpp rabbitmq ssl crypto
amqpcpp-static rabbitmq ssl crypto

 )

