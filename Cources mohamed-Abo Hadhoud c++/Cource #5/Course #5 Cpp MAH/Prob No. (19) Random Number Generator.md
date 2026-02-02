#include <iostream>  

#include <string>    

#include "cstdlib"

  

using namespace std;

  

int RandNumber(int From, int To) {

  int randNumber = rand() % (To - From + 1) + From;

  return randNumber;

}

  

int main() {

  srand((unsigned)time(NULL));

  cout << RandNumber(1, 20) << endl;

  cout << RandNumber(1, 20) << endl;

  cout << RandNumber(1, 20) << endl;

  
  
  

}