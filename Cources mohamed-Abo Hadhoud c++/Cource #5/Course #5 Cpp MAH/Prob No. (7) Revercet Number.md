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

  int number2;

  int reminder = 0;

  while (Number > 0)

  {

  

    reminder = Number % 10;

    Number = Number / 10;

    number2 = number2 * 10 + reminder;

  }

  return number2;

}

  

int main()

{

  cout << "Revecet NUmber is : \n"

    << PrintNumberType(ReadPositiveNumber("Please enter a positive number?"));

  

  return 0;

}