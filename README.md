# GoogleTestCreating
This is tutorial about googleTest, how to implement this to project, some examples etc

! You need extensions: 

In terminal:
1. git clone https://github.com/google/googletest.git

2. Create in project file: CMakeLists.txt (to configure CMake)

3. Configure CMake in its .txt file:
Obviously firstly need to make .cpp and .hpp files to work on...(for example : Example.cpp and Example.hpp)

cmake_minimum_required(VERSION 3.13) #set your downloaded version, lowe can be too

set(This GOOGLETEST)#name of your name file here 

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


4. Add folder named test
5. Add CMakeLists.txt in folder test(this is connected with google tests)
6. Fill .txt in test folder:
ccmake_minimum_required(VERSION 3.16) #set your downloaded version

set(This ExampleTests) #name of file connected with testing

#dont need headers for tests, so need only Sources:
set(Sources
    ExampleTests.cpp #here will be our test code
)

#the program itself (test is program, program which is tested is componend linked to a program)
add_executable(${This} ${Sources} )#executable - program itself

target_link_libraries(${This} PUBLIC 
gtest_main #target provided by google_test (ready program made by google which i link to my program)
Example #My file here
)#things I depend on

let to know CMake that this is actually unit test:
add_test(
    NAME ${This} this .txt is connected with test
    COMMAND ${This} this .txt is connected with test
)

7. Create ExampleTests.cpp in test folder

8. Check if cmake is installed -> cmake --version
if not installed or there are some problems vith version -> sudo apt update,
sudo apt install cmake

Also need ninja build : sudo apt install ninja-build

9. Now need to reaload project, so open Command Palette (cog on left down cornel -> command palette , and type Reload Window )
Then you will see something like : "Scan for kits" -> "Select kit for Google tests"
If want 32 bit->take x86_arm,
If want 64 bit->take amd64

In some cases it can be choosed automatically, so after reloading, Cmake for GoogleTest config can be finished...
Choose is noot needed if any time before choose was done on compilator

10. If everything is set okey, then we can type in command palette:
ctest -> we will see CMake run test 

After typing this, if test is passed then setting is ok...(is passes becouse we have no test)
If any error(and setting is done correctly) - delete build folder and rebuild project once again
to make sure everything is compiled okey...

rm -rf build (remove build -r recursively -f force(no asking about permition))





