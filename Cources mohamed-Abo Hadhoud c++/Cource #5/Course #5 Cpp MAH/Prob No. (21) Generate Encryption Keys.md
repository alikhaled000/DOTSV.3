  

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

  

string GetRandomWord(enCharType CharType, short Legnth) {

  string Word;

  

  for (int i = 1; i <= Legnth; i++)

  {

    Word = Word + GenratorFactor(CharType);

  }

  return Word;

}

  

string GenratKey() {

  string Key = "";

  Key = GetRandomWord(enCharType::Capital, 4) + "-";

  Key += GetRandomWord(enCharType::Capital, 4) + "-";

  Key += GetRandomWord(enCharType::Capital, 4) + "-";

  Key += GetRandomWord(enCharType::Capital, 4);

  return Key;

}

void GenratKeys(short Number) {

  for (int i = 1; i <= Number; i++)

  {

    cout << "Numebr of Keys [ " << i << "]" << " : " << GenratKey() << endl;

  }

  

}

  
  
  
  
  
  
  
  
  

int main() {

  

  srand((unsigned)time(NULL));

  GenratKeys(ReadPositiveNumber("Enter UR number OF Keys"));

}