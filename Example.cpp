#include <iostream>
#include "Example.hpp"
using namespace std;

/*#for sure will not pass test..
int function1(int x,int y,int &sum)
{
    return 0;
}
*/

//will pass test
int function1(int x,int y,int &sum)
{
     sum +=x*y;
     return sum;
}

int Square(int x){
    return x*x;
}

int Square1(int x){
    return x*x;
}