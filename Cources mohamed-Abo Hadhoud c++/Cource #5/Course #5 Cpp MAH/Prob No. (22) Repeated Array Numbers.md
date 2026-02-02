
#include <iostream>

#include <string>

#include "cstdlib"

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
void ReadArry(int arr[100], int &arrlengh) {
  cout << "\nEnter Number of Elemnt\n";
  cin >> arrlengh;
  cout << "\nEnter arrey Elemnt\n";
  for (int i = 0; i < arrlengh; i++) {
    cout << "Elemnt [ " << i + 1 << " ] : ";
    cin >> arr[i];
  }
  cout << endl;
}
void PrintArr(int arr[100], int arrlengh) {
  for (int i = 0; i < arrlengh; i++) {
    cout << arr[i] << " ";
  }
}
int TimeReapeted(int number, int arr[100], int arrlengh) {
  int count = 0;
  for (int i = 0; i <= arrlengh - 1; i++) {
    if (number == arr[i]) {
      count += 1;
    }
  }
  return count;
}
int main() {
  srand((unsigned)time(NULL));
  int arrey[100], arrlengh, Numbertocheck;
  ReadArry(arrey, arrlengh);
  Numbertocheck = ReadPositiveNumber("Enter UR Number TO Check : ");
  cout << "\n Orignal Arr is : ";
  PrintArr(arrey, arrlengh);
  cout << endl << TimeReapeted(Numbertocheck, arrey, arrlengh) << "Times";
}