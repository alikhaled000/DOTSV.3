
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
int MaxNumber(int arr[100], int arrlengh) {
  int sum = 0;
  for (int i = 0; i < arrlengh; i++) {
    sum += arr[i];
  }
  return sum;
}

int main() {
  srand((unsigned)time(NULL));
  int arrey[100], arrlengh, Numbertocheck;
  ReadArry(arrey, arrlengh);
  cout << "\n  Arrey is : ";
  PrintArr(arrey, arrlengh);
  cout << "Sum Number is : ";
  cout << MaxNumber(arrey, arrlengh);
}