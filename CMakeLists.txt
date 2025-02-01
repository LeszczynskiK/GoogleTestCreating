cmake_minimum_required(VERSION 3.13) #set your downloaded version

set(This GoogleTest)#name of your name file here 

project(${This} C CXX)#project(this) works with c (C) and c++ (CXX)

set(CMAKE_C_STANDARD 99)#set version of C language ->99
set(CMAKE_CXX_STANDARD 11)#set version of C++ language ->11

#if creting simple program, dont needed
set(CMAKE_POSITION_INDEPENDENT_CODE ON)#if using shared libraries(libraries used in one moment by a lot of programs)

enable_testing() #let to know that you are going to have unit tests

add_subdirectory(googletest)#add dependancies used in workspace

#What are we gonna build in our code:
set(Headers
    Example.hpp #names of headers files
)

set(Sources
    Example.cpp #names of cpp files
)

#component linked to a program
add_library(${This} STATIC ${Sources} ${Headers}) #linked with other thing to form program, without this googletest
#will be main program, with this option it will be pulled as a library
#We have 2 pieces: Program - Test that gonna go with the code, Library - code that gonna to be tested
#STATIC- static type of library, so with it file from Sources are gonna to be libraries(tested programs)

add_subdirectory(test) #we want to keep the test separated from our code(so put this in subdirectory named test)
#this is gonna to look for subdirectory in test folder...