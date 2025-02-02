#include "../Example.hpp"//out file names Example.hpp - has function to test
#include <gtest/gtest.h>//library to work with tests


bool f(){
    return false;
}

TEST(ExampleTests,function1 ){//function1 is defined in Example.cpp file(we are testing function1)

    /* #Simple examples:
    EXPECT_TRUE(false);
    ASSERT_TRUE(true);//if condition in ASSERT not made, then stop checking and finish here(dont check any bellow)
    EXPECT_EQ(true,true);//expect that 1st argument is equal to 2nd argument

    const bool function1 = f();//can me const - make sur condition never change so const!
    EXPECT_EQ(true,function1);//we check if result from function1 is true
    EXPECT_EQ(true,function1)<<"THis function failedddd!";//<< enable us to write text from " " if failed...
    */

   int x=42;
   int y=16;
   int sum =100;
   int oldSum = sum;
   int expectedNewSum = oldSum+x*y;

   EXPECT_EQ(//1st iteration - function1 is called once
    expectedNewSum,//this have to be equal 
    function1(x,y,sum)//to this, if not, then not passed
   );

    EXPECT_EQ(//2nd iteration - function1 is called 2nd time(to sum will increase sum+=)
    expectedNewSum,
    sum
   );   
}//arguments in TEST (file name, tester function name)

TEST(ExampleTests,Square)//now we are testing square function from Example.cpp
{
        int x=5;
        int expectedSquare = x*x;
        EXPECT_EQ(
            expectedSquare,//compare this
            Square(x)//to this..
        );
} 

//////////////////////////////////////////////////////////////////////////////////////////////////////
//Based on struct so i dont have to make local variable in every TEST, i can do it in struct
//and use them in every TEST (to acheive this, need to change TEST to TEST_F)
//it will make TEST a subclass to i can use variables from struct indirectly

//if we have a test that has the same kind of setup,then we use structure 
//struct is better than class becouse has public poles in it
struct ExampleTests :   public :: testing ::Test//use special class calles testing::Test
{   
     //can be classic
        //int x=5;

        //or can be allocated memory - will choose this to shor TearDown() functionality

    //allocate memory    
    int *x;
    int GetX()
    {
        return *x;//return value of x
    }
    int expectedSquare = GetX()*GetX();

    //we use ready poles from Test pole... we will override them
    virtual void SetUp() override {//place to initialise variables(also allocate memory)
        printf("X is created\n");//in tests use printf
        //you will only see this message in terminal after building, wont see in test results if test passed(show only if not passed)

        x = new int(42);//value of x
    }

    virtual void TearDown() override {//to clean after deleted variables(memory free)
        delete x;//clean after x memory freeing
    }
};

//We cant do 2 types of test on the same function(Square) so need to make 2 the same functions but with different name
//Google test dont allow to make 2 different types on test on the same one...
TEST_F(ExampleTests ,Square1)//now we are testing square function from Example.cpp
{
        EXPECT_EQ(
            expectedSquare,//compare this
            Square1(GetX())//to this..
        );
} 
