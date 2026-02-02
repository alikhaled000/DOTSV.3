#include <cstdlib>
#include <ctime>
#include <iostream>
#include <string>

using namespace std;
float FractionPart(float number) { return number - int(number); }
int MyRound(float number) {
  int INTPART;
  INTPART = int(number);
  float intFrac = FractionPart(number);
  if (abs(intFrac) >= .5) {
    if (number > 0) {
      return ++INTPART;
    } else {
      return --INTPART;
    }
  } else {
    return INTPART;
  }
}
int main() {
  float number;
  cout << "nPlease Enter ur NUmber\n";
  cin >> number;
  cout << endl << MyRound(number);
  return 0;
}       