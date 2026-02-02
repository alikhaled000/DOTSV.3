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

  
  
  

void PrintNumberType(int Number)

{

  while (Number > 0)

  {

    int reminder = Number % 10;

    Number = Number / 10;

    cout << reminder << endl;

  }

  
  

}

  

int main()

{

  PrintNumberType(ReadPositiveNumber("Please enter a positive number?"));

  

  return 0;

}