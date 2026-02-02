#include <cstdlib>
#include <ctime>
#include <iostream>
#include <string>

using namespace std;

int ReadNumber() {
  int Number;
  cout << "\nPlease enter a number to ADD ?\n";
  cin >> Number;
  return Number;
}

int RandomNumber(int From, int To) {
  int randNum = rand() % (To - From + 1) + From;
  return randNum;
}

void AddAreyElemnt(int arr[100], int &arrLength, int NUmber) {
  arrLength++;
  arr[arrLength - 1] = NUmber;
}
void InputUserNumberInARRet(int arr[100], int &arrLength) {
  bool From = true;
  do {
    AddAreyElemnt(arr, arrLength, ReadNumber());
    cout << "\nEnter number of New elements Yes[1] - No[0]\n";
    cin >> From;
  } while (From);
}
void PrintArray(int arr[100], int arrLength) {
  for (int i = 0; i < arrLength; i++)
    cout << arr[i] << " ";
  cout << "\n";
}
int main() {
  srand((unsigned)time(NULL));

  int arr[100];
  int arrLength = 0;

  InputUserNumberInARRet(arr, arrLength);
  cout << "\nLenghth OF ARREY : " << arrLength << endl;
  cout << "ARREY elements : ";
  PrintArray(arr, arrLength);
  return 0;
}