#include <iostream>  

#include <string>    

#include <cmath>      

  

using namespace std;

  

int ReadPositiveNumber(string Message)

{

  int Number = 0;

  do

  {

    cout << Message << endl;

    cin >> Number;

  } while (Number <= 0);

  

  return Number;

}

  
  
  

int PrintNumberType(int Number)

{

  int sum = 0;

  int reminder = 0;

  while (Number > 0)

  {

  

    reminder = Number % 10;

    Number = Number / 10;

    sum += reminder;

  

  }

  

  return sum;

}

  

int main()

{

  cout << PrintNumberType(ReadPositiveNumber("Please enter a positive number?"));

  

  return 0;

}