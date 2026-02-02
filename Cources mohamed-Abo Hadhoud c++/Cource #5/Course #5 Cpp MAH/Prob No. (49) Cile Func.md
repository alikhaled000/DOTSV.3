#include <cstdlib>
#include <ctime>
#include <iostream>
#include <string>

using namespace std;
float FractionPart(float number) { return number - int(number); }
int MyRound(float number) {
  if (abs(FractionPart(number)) > 0) {
    if (number > 0) {
      return int(number) + 1;
    } else {
      return int(number);
    }
  } else {
    return number;
  }
}
int main() {
  float number;
  cout << "nPlease Enter ur NUmber\n";
  cin >> number;
  cout << endl << MyRound(number);
  return 0;
}
}