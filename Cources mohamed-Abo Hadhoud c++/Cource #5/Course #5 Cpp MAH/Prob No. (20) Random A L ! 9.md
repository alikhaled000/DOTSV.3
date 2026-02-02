#include <iostream>  

#include <string>    

#include "cstdlib"

using namespace std;

enum enCharType { small = 1, Capital = 2, charctar = 3, number = 4 };

int RandNumber(int From, int To) {

  int randNumber = rand() % (To - From + 1) + From;

  return randNumber;

}

char GenratorFactor(enCharType Chartype) {

  switch (Chartype)

  {

  case enCharType::small:

    return char(RandNumber(97, 122));

    break;

  

  case enCharType::Capital:

    return char(RandNumber(65, 90));

    break;

  case enCharType::charctar:

    return char(RandNumber(33, 47));

    break;

  case enCharType::number:

    return char(RandNumber(48, 57));

    break;

  }

  return '\0';

  

}

  
  
  

int main() {

  srand((unsigned)time(NULL));

  
  
  
  
  

  cout << GenratorFactor(enCharType::Capital) << endl;

  cout << GenratorFactor(enCharType::small) << endl;

  cout << GenratorFactor(enCharType::charctar) << endl;

  cout << GenratorFactor(enCharType::number) << endl;

  
  
  

}