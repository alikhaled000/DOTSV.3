#include "cmath"
#include <cmath>
#include <cstdlib>
#include <ctime>
#include <iostream>
#include <string>
using namespace std;
float FractionPart(float number) { return number - int(number); }
int Mysqrt(float number) { return pow(number, 0.5); }
int main() {
  float number;
  cout << "nPlease Enter ur NUmber\n";
  cin >> number;
  cout << endl << Mysqrt(number);
  return 0;
}