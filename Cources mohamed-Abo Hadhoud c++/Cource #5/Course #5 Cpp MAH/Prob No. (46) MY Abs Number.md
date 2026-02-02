#include <cstdlib>
#include <ctime>
#include <iostream>
#include <string>

using namespace std;

int MyAbs(int number) {
  if (number > 0) {
    return number;
  } else {
    return number * -1;
  }
}
int main() {
  int number;
  cout << "nPlease Enter ur NUmber\n";
  cin >> number;
  cout << MyAbs(number) << endl;
  cout << abs(number) << endl;
  return 0;
}