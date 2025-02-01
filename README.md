# GoogleTestCreating
This is tutorial about googleTest, how to implement this to project, some examples etc

! You need extensions: CMake Tools and C/C++

In terminal:
1. git clone https://github.com/google/googletest.git

2. Create in project file: CMakeLists.txt (to configure CMake)

3. Configure CMake in its .txt file:
Obviously firstly need to make .cpp and .hpp files to work on...(for example : Example.cpp and Example.hpp)
Config written in CmakeLists.txt in GoogleTest folder


4. Add folder named test

5. Add CMakeLists.txt in folder test(this is connected with google tests)

6. Fill .txt in test folder:
Config written in CMakeLists.txt in test folder

7. Create ExampleTests.cpp in test folder

8. Check if cmake is installed -> cmake --version
if not installed or there are some problems vith version -> sudo apt update,
sudo apt install cmake

Also need ninja build : sudo apt install ninja-build

9. Now need to reload project, so open Command Palette (cog on left down cornel -> command palette , and type Reload Window )
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

11. Press F7 to compile! And see the results of tests..



