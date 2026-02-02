#include <cstdlib>
#include <ctime>
#include <iostream>
#include <string>

using namespace std;

int RandNumber(int From, int To) { return rand() % (To - From + 1) + From; }

int ReadPositiveNumber(string Message) {
  int Number = 0;
  do {
    cout << Message << endl;
    cin >> Number;
  } while (Number <= 0);
  return Number;
}

void ReadArry(int arr[100], int &arrlengh) {
  cout << "\nEnter Number of Elements: ";
  cin >> arrlengh;
  for (int i = 0; i < arrlengh; i++) {
    arr[i] = RandNumber(1, 100);
  }
}

void PrintArr(int arr[100], int arrlengh) {
  for (int i = 0; i < arrlengh; i++) {
    cout << arr[i] << " ";
  }
  cout << endl;
}

void InfoArr(int arr[100], int arrlengh, int NumbertoCheck) {
  bool Found = false; // We use this flag to check if we found it at least once

  for (int i = 0; i < arrlengh; i++) {
    if (arr[i] == NumbertoCheck) {
      cout << "The Number Position is : " << i << endl;
      cout << "The Number Order is    : " << i + 1 << endl;
      Found = true;
    }
  }

  if (!Found) {
    cout << "Number not found in the array." << endl;
  }
}

int main() {
  srand((unsigned)time(NULL));

  int arrey[100], arrlengh;

  ReadArry(arrey, arrlengh);

  cout << "\nArray is: ";
  PrintArr(arrey, arrlengh);

  // We store the input in 'NumToCheck' and pass it correctly
  int NumToCheck = ReadPositiveNumber("\nENTER NUMBER TO CHECK IN THE ARRAY:");

  InfoArr(arrey, arrlengh, NumToCheck);

  return 0;