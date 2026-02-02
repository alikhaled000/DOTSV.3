#include <cmath>
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

short FindNumberPositionInArray(int Number, int arr[100], int arrLength) {
  for (int i = 0; i < arrLength; i++) {
    if (arr[i] == Number)
      return i; // Return the index as soon as the number is found.
  }
  // If the number is not found, return -1.
  return -1;
}
bool IsNumAvalible(int Number, int arr[100], int arrLength) {
  return FindNumberPositionInArray(Number, arr, arrLength) != -1;
}

;
int RandomNumber(int From, int To) {
  int randNum = rand() % (To - From + 1) + From;
  return randNum;
}

void FillArray(int arr[100], int &arrLength) {
  arrLength = 10;

  arr[0] = 10;
  arr[1] = 10;
  arr[2] = 10;
  arr[3] = 50;
  arr[4] = 50;
  arr[5] = 70;
  arr[6] = 70;
  arr[7] = 70;
  arr[8] = 70;
  arr[9] = 90;
}
void PrintArray(int arr[100], int arrLength) {
  for (int i = 0; i < arrLength; i++)
    cout << arr[i] << " ";
  cout << "\n";
}

void AddArrayElement(int Number, int arr[100], int &arrLength) {
  arrLength++;
  arr[arrLength - 1] = Number;
}
short FindNumberPossionInArrey(int Number, int arr[100], int arrLength) {

  for (int i = 0; i < arrLength; i++) {
    if (arr[i] == Number) {
      return i;
    }
  }
  return -1;
}
bool IsNumberInArrey(int Number, int arr[100], int arrLength) {
  return FindNumberPossionInArrey(Number, arr, arrLength) != -1;
}
void CopyDisArrey(int arr[100], int arrLength, int arrD[100], int &arr2Length) {

  for (int i = 0; i < arrLength; i++) {
    if (!IsNumberInArrey(arr[i], arrD, arr2Length)) {
      AddArrayElement(arr[i], arrD, arr2Length);
    }
  }
}
int main() {
  srand((unsigned)time(NULL));

  int arr[100];
  int arrLength = 0;
  int arr2[100];
  int arr2Length = 0;
  FillArray(arr, arrLength);
  cout << "ARREY elements : ";
  PrintArray(arr, arrLength);

  CopyDisArrey(arr, arrLength, arr2, arr2Length);
  cout << "COPY ARREY : ";
  PrintArray(arr2, arr2Length);
  return 0;
}