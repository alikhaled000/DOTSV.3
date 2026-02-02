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

  
  
  

int counterFreqNumber(int Number, short degit)

{

  int reminder = 0;

  int freq = 0;

  while (Number > 0)

  {

    reminder = Number % 10;

    Number = Number / 10;

    if (degit == reminder) {

      freq++;

  

    }

  }

  return freq;

  
  

}

  

int main()

{

  int Numebr = ReadPositiveNumber("Please enter a positive number?");

  short FrqNuber = ReadPositiveNumber("Please enter a positive freqancy number?");

  cout << "your Freq NUmber is " << FrqNuber << "\n" << "Number of Digits is : " << counterFreqNumber(Numebr, FrqNuber);

  return 0;

}