cmake_minimum_required(VERSION 3.16) #set your downloaded version

set(This ExampleTests) #name of file connected with testing

#dont need headers for tests, so need only Sources:
set(Sources
    ExampleTests.cpp #here will be our test code
)

#the program itself (test is program, program which is tested is componend linked to a program)
add_executable(${This} ${Sources} )#executable - program itself

target_link_libraries(${This} PUBLIC
gtest_main #target provided by google_test (ready program made by google which i link to my program)
EXAMPLE #My file here
)#things I depend on

#let to know CMake that this is actually unit test:
add_test(
    NAME ${This}#this .txt is connected with test
    COMMAND ${This}#this .txt is connected with test
)