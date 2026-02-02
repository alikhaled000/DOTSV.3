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

bool checkPrefrctNumber(int number) {

  int sum = 0;

  for (int i = 1; i < number; i++)

  {

    if (number % i == 0) {

      sum += i;

    }

  

  }

  return number == sum;

}

  
  
  

void PrintNumberType(int Number)

{

  for (int i = 0; i <= Number; i++)

  {

    if (checkPrefrctNumber(i) == true) {

      cout << i << endl;

    }

  }

  

}

  

int main()

{

  PrintNumberType(ReadPositiveNumber("Please enter a positive number?"));

  

  return 0;

}