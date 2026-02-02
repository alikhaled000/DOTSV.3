#include <cmath>
#include <ctime>
#include <iostream>
#include <utility>

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
void Swap(int &A, int &B) {
  int Temp;
  Temp = A;
  A = B;
  B = Temp;
}
int RandomNumber(int From, int To) {
  int randNum = rand() % (To - From + 1) + From;
  return randNum;
}
void FillArray(int arr[100], int &arrLength) {

  for (int i = 0; i < arrLength; i++)
    arr[i] = i + 1;
}

void AreeyShuffle(int arrSource[100], int arrLength) {
  for (int i = 0; i < arrLength; i++) {
    Swap(arrSource[RandomNumber(1, arrLength) - 1],
         arrSource[RandomNumber(1, arrLength) - 1]);
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
  cout << "\n Shffle Arrey NUmber is : \n";
  AreeyShuffle(arr, arrLength);
  PrintArray(arr, arrLength);

  return 0;
}