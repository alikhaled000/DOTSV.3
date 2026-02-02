
#include <algorithm>
#include <iostream>

#include <string>

#include "cstdlib"

using namespace std;
int RandNumber(int From, int To) {

  int randNumber = rand() % (To - From + 1) + From;

  return randNumber;
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
void ReadArry(int arr[100], int &arrlengh) {
  cout << "\nEnter Number of Elemnt\n";
  cin >> arrlengh;
  cout << "\nEnter arrey Elemnt\n";
  for (int i = 0; i < arrlengh; i++) {
    arr[i] = RandNumber(1, 100);
  }
  cout << endl;
}
void PrintArr(int arr[100], int arrlengh) {
  for (int i = 0; i < arrlengh; i++) {
    cout << arr[i] << " ";
  }
}
void CopyArrey(int arr[100], int Destrivtion[100], int arrlengh) {
  for (int i = 0; i < arrlengh; i++) {
    Destrivtion[i] = arr[i];
  }
}
int main() {
  srand((unsigned)time(NULL));
  int arrey[100], arrlengh, arrey2[100];
  ReadArry(arrey, arrlengh);
  cout << "\n  Arrey is : ";
  PrintArr(arrey, arrlengh);
  CopyArrey(arrey, arrey2, arrlengh);
  cout << endl << "Arrey 2 :  ";
  PrintArr(arrey2, arrlengh);
}