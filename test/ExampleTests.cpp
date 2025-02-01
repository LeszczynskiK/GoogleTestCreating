#include <gtest/gtest.h>//library to work with tests

bool f(){
    return false;
}

TEST(ExampleTests,DemonstrateGTestMacros ){
    EXPECT_TRUE(false);
    ASSERT_TRUE(true);//if condition in ASSERT not made, then stop checking and finish here(dont check any bellow)
    EXPECT_EQ(true,true);//expect that 1st argument is equal to 2nd argument

    const bool function1 = f();
    EXPECT_EQ(true,function1);//we check if result from function1 is true
    EXPECT_EQ(true,function1)<<"THis function failedddd!";//<< enable us to write text from " " if failed...
}//arguments in TEST (file name, tester function name)