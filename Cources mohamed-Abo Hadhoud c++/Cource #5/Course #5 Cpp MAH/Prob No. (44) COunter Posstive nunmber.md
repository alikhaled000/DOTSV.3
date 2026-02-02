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
    arr[i] = RandomNumber(-100, 100);
}
int ODDCOUNT(int arr[100], int arrLength) {
  int counter = 0;
  for (int i = 0; i < arrLength; i++) {
    if (arr[i] > 0) {
      counter++;
    }
  }
  return counter;
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
  cout << "\nLenghth OF ARREY : " << arrLength << endl;
  cout << "ARREY elements : ";
  PrintArray(arr, arrLength);
  cout << "\n" << ODDCOUNT(arr, arrLength);
  return 0;
}