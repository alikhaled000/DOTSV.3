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

void FillArray(int arr[100], int &arrLength) {
  cout << "\n Enter ARREY Length : ";
  cin >> arrLength;

  for (int i = 0; i < arrLength; i++)
    arr[i] = RandomNumber(1, 100);
}
void AddArrayElement(int Number, int arr[100], int &arrLength) {
  arrLength++;
  arr[arrLength - 1] = Number;
}

void InputUserNumberInARRet(int arr[100], int arrLength, int arrD[100],
                            int &arr2Length) {

  for (int i = 0; i < arrLength; i++) {
    if (arr[i] % 2 != 0) {
      AddArrayElement(arr[i], arrD, arr2Length);
    }
  }
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
  int arr2[100];
  int arr2Length = 0;
  FillArray(arr, arrLength);
  InputUserNumberInARRet(arr, arrLength, arr2, arr2Length);
  cout << "\nLenghth OF ARREY : " << arrLength << endl;
  cout << "ARREY elements : ";
  PrintArray(arr, arrLength);
  cout << "COPY ARREY : ";
  PrintArray(arr2, arr2Length);
  return 0;
}