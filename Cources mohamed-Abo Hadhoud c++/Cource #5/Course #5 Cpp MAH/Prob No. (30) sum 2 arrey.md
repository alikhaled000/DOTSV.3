#include <cmath>
#include <ctime>
#include <iostream>

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

int RandomNumber(int From, int To) {
  int randNum = rand() % (To - From + 1) + From;
  return randNum;
}

void FillArray(int arr[100], int &arrLength) {

  for (int i = 0; i < arrLength; i++)
    arr[i] = RandomNumber(1, 100);
}

void SumRandomNUmber(int arrSource[100], int arrDestination[100], int arrLength,
                     int sumarr[100]) {
  for (int i = 0; i < arrLength; i++) {
    sumarr[i] = arrSource[i] + arrDestination[i];
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
  int arrLength = ReadPositiveNumber("Enter elements Number\n");

  FillArray(arr, arrLength);

  int arr2[100];
  FillArray(arr2, arrLength);
  int arrSum[100];
  cout << "\nArray 1 elements:\n";
  PrintArray(arr, arrLength);
  cout << "\nArray 2 elements:\n";
  PrintArray(arr2, arrLength);
  SumRandomNUmber(arr, arr2, arrLength, arrSum);
  cout << "\n Sum Arrey NUmber is : \n";
  PrintArray(arrSum, arrLength);
  return 0;
}